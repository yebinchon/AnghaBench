#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char*,char const*) ; 

char* FUNC5(char **str, const char *delim)
{
   /* Taken from https://codereview.stackexchange.com/questions/216956/strtok-function-thread-safe-supports-empty-tokens-doesnt-change-string# */
   char *str_ptr    = NULL;
   char *delim_ptr  = NULL;
   char *token      = NULL;
   size_t token_len = 0;

   /* Sanity checks */
   if (!str || FUNC1(delim))
      return NULL;

   str_ptr = *str;

   /* Note: we don't check string_is_empty() here,
    * empty strings are valid */
   if (!str_ptr)
      return NULL;

   /* Search for delimiter */
   delim_ptr = FUNC4(str_ptr, delim);

   if (delim_ptr)
      token_len = delim_ptr - str_ptr;
   else
      token_len = FUNC3(str_ptr);

   /* Allocate token string */
   token = (char *)FUNC0((token_len + 1) * sizeof(char));

   if (!token)
      return NULL;

   /* Copy token */
   FUNC2(token, str_ptr, (token_len + 1) * sizeof(char));
   token[token_len] = '\0';

   /* Update input string pointer */
   *str = delim_ptr ? delim_ptr + FUNC3(delim) : NULL;

   return token;
}