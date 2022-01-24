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
union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,char*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 () ; 
 char* FUNC5 (char**,char const*) ; 

struct string_list *FUNC6(char *str, const char *delim)
{
   char *token              = NULL;
   char **str_ptr           = NULL;
   struct string_list *list = NULL;

   /* Sanity check */
   if (!str || FUNC1(delim))
      goto error;

   str_ptr = &str;
   list    = FUNC4();

   if (!list)
      goto error;

   token = FUNC5(str_ptr, delim);
   while (token)
   {
      union string_list_elem_attr attr;

      attr.i = 0;

      if (!FUNC2(list, token, attr))
         goto error;

      FUNC0(token);
      token = NULL;

      token = FUNC5(str_ptr, delim);
   }

   return list;

error:
   if (token)
      FUNC0(token);
   if (list)
      FUNC3(list);
   return NULL;
}