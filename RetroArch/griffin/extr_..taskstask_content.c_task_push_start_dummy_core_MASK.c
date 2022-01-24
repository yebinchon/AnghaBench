#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  directory_system; } ;
struct TYPE_15__ {int /*<<< orphan*/  check_firmware_before_loading; } ;
struct TYPE_19__ {TYPE_4__ paths; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
struct TYPE_20__ {int load_no_content; } ;
typedef  TYPE_6__ rarch_system_info_t ;
struct TYPE_17__ {int /*<<< orphan*/  ups; int /*<<< orphan*/  bps; int /*<<< orphan*/  ips; } ;
struct TYPE_21__ {TYPE_3__ name; } ;
typedef  TYPE_7__ global_t ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_22__ {char* directory_system; char* name_ips; char* name_bps; char* name_ups; int block_extract; int need_fullpath; int set_supports_no_game_enable; TYPE_2__ subsystem; int /*<<< orphan*/ * valid_extensions; int /*<<< orphan*/ * directory_cache; void* bios_is_missing; void* patch_is_blocked; void* is_ups_pref; void* is_bps_pref; void* is_ips_pref; int /*<<< orphan*/  check_firmware_before_loading; } ;
typedef  TYPE_8__ content_information_ctx_t ;
struct TYPE_23__ {scalar_t__ environ_get; } ;
typedef  TYPE_9__ content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  RARCH_CTL_DATA_DEINIT ; 
 int /*<<< orphan*/  RARCH_CTL_IS_BPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_IS_IPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_IS_MISSING_BIOS ; 
 int /*<<< orphan*/  RARCH_CTL_IS_PATCH_BLOCKED ; 
 int /*<<< orphan*/  RARCH_CTL_IS_UPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_STATE_FREE ; 
 int /*<<< orphan*/  RARCH_CTL_TASK_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_7__* FUNC4 () ; 
 scalar_t__ menu_content_environment_get ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

bool FUNC12(content_ctx_info_t *content_info)
{
   content_information_ctx_t content_ctx;
   bool ret                                   = true;
   char *error_string                         = NULL;
   global_t *global                           = FUNC4();
   settings_t *settings                       = FUNC1();
   rarch_system_info_t *sys_info              = FUNC7();

   if (!content_info)
      return false;

   content_ctx.check_firmware_before_loading  = settings->bools.check_firmware_before_loading;
   content_ctx.is_ips_pref                    = FUNC6(RARCH_CTL_IS_IPS_PREF, NULL);
   content_ctx.is_bps_pref                    = FUNC6(RARCH_CTL_IS_BPS_PREF, NULL);
   content_ctx.is_ups_pref                    = FUNC6(RARCH_CTL_IS_UPS_PREF, NULL);
   content_ctx.patch_is_blocked               = FUNC6(RARCH_CTL_IS_PATCH_BLOCKED, NULL);
   content_ctx.bios_is_missing                = FUNC6(RARCH_CTL_IS_MISSING_BIOS, NULL);
   content_ctx.directory_system               = NULL;
   content_ctx.directory_cache                = NULL;
   content_ctx.name_ips                       = NULL;
   content_ctx.name_bps                       = NULL;
   content_ctx.name_ups                       = NULL;
   content_ctx.valid_extensions               = NULL;
   content_ctx.block_extract                  = false;
   content_ctx.need_fullpath                  = false;
   content_ctx.set_supports_no_game_enable    = false;

   content_ctx.subsystem.data                 = NULL;
   content_ctx.subsystem.size                 = 0;

   if (global)
   {
      if (!FUNC10(global->name.ips))
         content_ctx.name_ips                 = FUNC9(global->name.ips);
      if (!FUNC10(global->name.bps))
         content_ctx.name_bps                 = FUNC9(global->name.bps);
      if (!FUNC10(global->name.ups))
         content_ctx.name_ups                 = FUNC9(global->name.ups);
   }

   if (!FUNC10(settings->paths.directory_system))
      content_ctx.directory_system            = FUNC9(settings->paths.directory_system);

   if (!content_info->environ_get)
      content_info->environ_get = menu_content_environment_get;

   /* Clear content path */
   FUNC5(RARCH_PATH_CONTENT);

   /* Preliminary stuff that has to be done before we
    * load the actual content. Can differ per mode. */
   sys_info->load_no_content = false;
   FUNC6(RARCH_CTL_STATE_FREE, NULL);
   FUNC6(RARCH_CTL_DATA_DEINIT, NULL);
   FUNC6(RARCH_CTL_TASK_INIT, NULL);

   /* Loads content into currently selected core. */
   if (!FUNC2(content_info))
   {
      if (error_string)
      {
         FUNC8(error_string, 2, 90, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
         FUNC0("%s\n", error_string);
         FUNC3(error_string);
      }

      ret =  false;
   }
   else
      FUNC11(false, false);

   if (content_ctx.name_ips)
      FUNC3(content_ctx.name_ips);
   if (content_ctx.name_bps)
      FUNC3(content_ctx.name_bps);
   if (content_ctx.name_ups)
      FUNC3(content_ctx.name_ups);
   if (content_ctx.directory_system)
      FUNC3(content_ctx.directory_system);

   return ret;
}