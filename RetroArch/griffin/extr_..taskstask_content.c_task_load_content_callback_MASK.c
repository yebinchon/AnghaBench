#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct retro_system_info {int block_extract; int need_fullpath; int /*<<< orphan*/  valid_extensions; } ;
struct TYPE_25__ {int /*<<< orphan*/  directory_system; int /*<<< orphan*/  directory_cache; } ;
struct TYPE_21__ {int set_supports_no_game_enable; int /*<<< orphan*/  check_firmware_before_loading; } ;
struct TYPE_26__ {TYPE_5__ paths; TYPE_1__ bools; } ;
typedef  TYPE_6__ settings_t ;
struct TYPE_23__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_27__ {TYPE_3__ subsystem; } ;
typedef  TYPE_7__ rarch_system_info_t ;
struct TYPE_24__ {int /*<<< orphan*/  ups; int /*<<< orphan*/  bps; int /*<<< orphan*/  ips; } ;
struct TYPE_28__ {TYPE_4__ name; } ;
typedef  TYPE_8__ global_t ;
struct TYPE_29__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_9__ discord_userdata_t ;
struct TYPE_22__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {char* directory_system; char* directory_cache; char* name_ips; char* name_bps; char* name_ups; char* valid_extensions; int block_extract; int need_fullpath; int set_supports_no_game_enable; TYPE_2__ subsystem; void* bios_is_missing; void* patch_is_blocked; void* is_ups_pref; void* is_bps_pref; void* is_ips_pref; int /*<<< orphan*/  check_firmware_before_loading; } ;
typedef  TYPE_10__ content_information_ctx_t ;
struct TYPE_20__ {scalar_t__ environ_get; } ;
typedef  TYPE_11__ content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_DISCORD_UPDATE ; 
 int /*<<< orphan*/  DISCORD_PRESENCE_MENU ; 
 int /*<<< orphan*/  DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  RARCH_CTL_IS_BPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_IS_IPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_IS_MISSING_BIOS ; 
 int /*<<< orphan*/  RARCH_CTL_IS_PATCH_BLOCKED ; 
 int /*<<< orphan*/  RARCH_CTL_IS_UPS_PREF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 TYPE_6__* FUNC2 () ; 
 int FUNC3 (TYPE_11__*) ; 
 scalar_t__ discord_is_inited ; 
 scalar_t__ FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_8__* FUNC6 () ; 
 scalar_t__ menu_content_environment_get ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct retro_system_info* FUNC8 () ; 
 TYPE_7__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static bool FUNC14(content_ctx_info_t *content_info,
      bool loading_from_menu, bool loading_from_cli)
{
   content_information_ctx_t content_ctx;

   bool ret                                   = false;
   char *error_string                         = NULL;
   global_t *global                           = FUNC6();
   settings_t *settings                       = FUNC2();
   rarch_system_info_t *sys_info              = FUNC9();

   content_ctx.check_firmware_before_loading  = settings->bools.check_firmware_before_loading;
   content_ctx.is_ips_pref                    = FUNC7(RARCH_CTL_IS_IPS_PREF, NULL);
   content_ctx.is_bps_pref                    = FUNC7(RARCH_CTL_IS_BPS_PREF, NULL);
   content_ctx.is_ups_pref                    = FUNC7(RARCH_CTL_IS_UPS_PREF, NULL);
   content_ctx.patch_is_blocked               = FUNC7(RARCH_CTL_IS_PATCH_BLOCKED, NULL);
   content_ctx.bios_is_missing                = FUNC7(RARCH_CTL_IS_MISSING_BIOS, NULL);
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

   if (sys_info)
   {
      struct retro_system_info *system        = FUNC8();

      content_ctx.set_supports_no_game_enable = settings->bools.set_supports_no_game_enable;

      if (!FUNC12(settings->paths.directory_system))
         content_ctx.directory_system         = FUNC11(settings->paths.directory_system);
      if (!FUNC12(settings->paths.directory_cache))
         content_ctx.directory_cache          = FUNC11(settings->paths.directory_cache);
      if (!FUNC12(system->valid_extensions))
         content_ctx.valid_extensions         = FUNC11(system->valid_extensions);

      content_ctx.block_extract               = system->block_extract;
      content_ctx.need_fullpath               = system->need_fullpath;

      content_ctx.subsystem.data              = sys_info->subsystem.data;
      content_ctx.subsystem.size              = sys_info->subsystem.size;
   }

   if (global)
   {
      if (!FUNC12(global->name.ips))
         content_ctx.name_ips                 = FUNC11(global->name.ips);
      if (!FUNC12(global->name.bps))
         content_ctx.name_bps                 = FUNC11(global->name.bps);
      if (!FUNC12(global->name.ups))
         content_ctx.name_ups                 = FUNC11(global->name.ups);
   }

   if (!FUNC12(settings->paths.directory_system))
      content_ctx.directory_system            = FUNC11(settings->paths.directory_system);

   if (!content_info->environ_get)
      content_info->environ_get = menu_content_environment_get;

   if (FUNC4(&content_ctx))
      goto end;

#ifdef HAVE_DISCORD
   if (discord_is_inited)
   {
      discord_userdata_t userdata;
      userdata.status = DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED;
      command_event(CMD_EVENT_DISCORD_UPDATE, &userdata);
      userdata.status = DISCORD_PRESENCE_MENU;
      command_event(CMD_EVENT_DISCORD_UPDATE, &userdata);
   }
#endif

   /* Loads content into currently selected core. */
   ret = FUNC3(content_info);

   if (ret)
      FUNC13(true, loading_from_cli);

end:
   if (content_ctx.name_ips)
      FUNC5(content_ctx.name_ips);
   if (content_ctx.name_bps)
      FUNC5(content_ctx.name_bps);
   if (content_ctx.name_ups)
      FUNC5(content_ctx.name_ups);
   if (content_ctx.directory_system)
      FUNC5(content_ctx.directory_system);
   if (content_ctx.directory_cache)
      FUNC5(content_ctx.directory_cache);
   if (content_ctx.valid_extensions)
      FUNC5(content_ctx.valid_extensions);

   if (!ret)
   {
      if (error_string)
      {
         FUNC10(error_string, 2, 90, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
         FUNC0("%s\n", error_string);
         FUNC5(error_string);
      }

      return false;
   }

   return true;
}