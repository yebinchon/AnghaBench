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
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list*,char const*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*) ; 
 struct string_list* FUNC2 () ; 

struct string_list *FUNC3(const char *dir,
      const char *ext, bool include_dirs,
      bool include_hidden, bool include_compressed,
      bool recursive)
{
   struct string_list *list       = NULL;

   if (!(list = FUNC2()))
      return NULL;

   if (!FUNC0(list, dir, ext, include_dirs,
            include_hidden, include_compressed, recursive))
   {
      FUNC1(list);
      return NULL;
   }

   return list;
}