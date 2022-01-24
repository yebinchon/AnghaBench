#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path_key ;
typedef  int /*<<< orphan*/  opt_key ;
typedef  int /*<<< orphan*/  desc_key ;
struct TYPE_5__ {TYPE_3__* firmware; scalar_t__ config_data; } ;
typedef  TYPE_1__ core_info_t ;
struct TYPE_6__ {size_t count; int /*<<< orphan*/ * list; } ;
typedef  TYPE_2__ core_info_list_t ;
struct TYPE_7__ {int optional; void* desc; void* path; } ;
typedef  TYPE_3__ core_info_firmware_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(
      core_info_list_t *core_info_list)
{
   size_t i;
   unsigned c;

   for (i = 0; i < core_info_list->count; i++)
   {
      unsigned count                  = 0;
      core_info_firmware_t *firmware  = NULL;
      core_info_t *info               = (core_info_t*)&core_info_list->list[i];
      config_file_t *config           = (config_file_t*)info->config_data;

      if (!config || !FUNC3(config, "firmware_count", &count))
         continue;

      firmware = (core_info_firmware_t*)FUNC0(count, sizeof(*firmware));

      if (!firmware)
         continue;

      info->firmware = firmware;

      for (c = 0; c < count; c++)
      {
         char path_key[64];
         char desc_key[64];
         char opt_key[64];
         bool tmp_bool     = false;
         char *tmp         = NULL;
         path_key[0]       = desc_key[0] = opt_key[0] = '\0';

         FUNC5(path_key, sizeof(path_key), "firmware%u_path", c);
         FUNC5(desc_key, sizeof(desc_key), "firmware%u_desc", c);
         FUNC5(opt_key,  sizeof(opt_key),  "firmware%u_opt",  c);

         if (FUNC2(config, path_key, &tmp) && !FUNC7(tmp))
         {
            info->firmware[c].path = FUNC6(tmp);
            FUNC4(tmp);
            tmp = NULL;
         }
         if (FUNC2(config, desc_key, &tmp) && !FUNC7(tmp))
         {
            info->firmware[c].desc = FUNC6(tmp);
            FUNC4(tmp);
            tmp = NULL;
         }
         if (tmp)
            FUNC4(tmp);
         tmp = NULL;
         if (FUNC1(config, opt_key , &tmp_bool))
            info->firmware[c].optional = tmp_bool;
      }
   }
}