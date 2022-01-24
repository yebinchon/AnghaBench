#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  databases_list; int /*<<< orphan*/  supported_extensions_list; } ;
typedef  TYPE_1__ core_info_t ;
struct TYPE_4__ {size_t count; TYPE_1__* list; } ;

/* Variables and functions */
 TYPE_2__* core_info_curr_list ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

bool FUNC7(
      const char *database_path, const char *path)
{
   char *database           = NULL;
   const char *new_path     = FUNC1(database_path);

   if (FUNC5(new_path))
      return false;

   database                 = FUNC4(new_path);

   if (FUNC5(database))
      goto error;

   FUNC3(database);

   if (core_info_curr_list)
   {
      size_t i;

      for (i = 0; i < core_info_curr_list->count; i++)
      {
         const core_info_t *info = &core_info_curr_list->list[i];

         if (!FUNC6(info->supported_extensions_list,
                  FUNC2(path)))
            continue;

         if (!FUNC6(info->databases_list, database))
            continue;

         FUNC0(database);
         return true;
      }
   }

error:
   if (database)
      FUNC0(database);
   return false;
}