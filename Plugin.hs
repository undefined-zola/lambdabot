--
-- Copyright (c) 2006 Don Stewart - http://www.cse.unsw.edu.au/~dons
-- GPL version 2 or later (see http://www.gnu.org/copyleft/gpl.html)
--
-- Syntactic sugar for developing plugins.
-- Simplifies import lists, and abstracts over common patterns
--
module Plugin (
        ios,

        module Lambdabot,
        module LBState,
        module Util,
        module Serial,
        module Config,
        module Process,

        module Data.List,
        module Data.Char,
        module Data.Maybe,
        module Data.Either,
        module Text.Regex,
        module System.IO,

        module Control.Monad.Error

    ) where

import Lambdabot
import LBState
import Util
import Serial
import Config
import Process

import Data.List
import Data.Char
import Data.Maybe
import Data.Either
import Text.Regex

import System.IO

import Control.Monad.Error
import Control.Monad.Trans

-- | convenience, we often want to perform some io, get a string, and box it.
ios :: (Functor m, MonadIO m) => IO a -> m [a]
ios = (return `fmap`) . io
