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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,char const*,unsigned int,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 () ; 

__attribute__((used)) static struct string_list *FUNC5(const char *path)
{
   union string_list_elem_attr attr;
   struct string_list *list = FUNC4();
   const char *delim        = FUNC0(path);

   attr.i = 0;

   if (delim)
   {
      /* add archive path to list first */
      if (!FUNC2(list, path, (unsigned)(delim - path), attr))
         goto error;

      /* now add the path within the archive */
      delim++;

      if (*delim)
      {
         if (!FUNC1(list, delim, attr))
            goto error;
      }
   }
   else
      if (!FUNC1(list, path, attr))
         goto error;

   return list;

error:
   FUNC3(list);
   return NULL;
}