#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t firmware_count; TYPE_1__* firmware; } ;
typedef  TYPE_2__ core_info_t ;
typedef  int /*<<< orphan*/  core_info_list_t ;
struct TYPE_4__ {int missing; int /*<<< orphan*/  path; int /*<<< orphan*/  optional; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(
      core_info_list_t *core_info_list,
      const char *core,
      const char *systemdir,
      bool *set_missing_bios)
{
   size_t i;
   core_info_t      *info = NULL;
   char             *path = NULL;
   size_t       path_size = PATH_MAX_LENGTH * sizeof(char);

   if (!core_info_list || !core)
      return false;

   info                   = FUNC1(core_info_list, core);

   if (!info)
      return false;

   path                   = (char*)FUNC4(path_size);

   if (!path)
      return false;

   path[0]                = '\0';

   for (i = 0; i < info->firmware_count; i++)
   {
      if (FUNC6(info->firmware[i].path))
         continue;

      FUNC2(path, systemdir,
            info->firmware[i].path, path_size);
      info->firmware[i].missing = !FUNC5(path);
      if (info->firmware[i].missing && !info->firmware[i].optional)
      {
         *set_missing_bios = true;
         FUNC0("Firmware missing: %s\n", info->firmware[i].path);
      }
   }

   FUNC3(path);
   return true;
}