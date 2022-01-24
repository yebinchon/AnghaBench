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
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 () ; 
 char* FUNC5 (char*,char const*,char**) ; 

struct string_list *FUNC6(const char *str, const char *delim)
{
   char *save      = NULL;
   char *copy      = NULL;
   const char *tmp = NULL;
   struct string_list *list = FUNC4();

   if (!list)
      goto error;

   copy = FUNC1(str);
   if (!copy)
      goto error;

   tmp = FUNC5(copy, delim, &save);
   while (tmp)
   {
      union string_list_elem_attr attr;

      attr.i = 0;

      if (!FUNC2(list, tmp, attr))
         goto error;

      tmp = FUNC5(NULL, delim, &save);
   }

   FUNC0(copy);
   return list;

error:
   FUNC3(list);
   FUNC0(copy);
   return NULL;
}