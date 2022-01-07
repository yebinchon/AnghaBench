
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int directory_system; } ;
struct TYPE_14__ {int check_firmware_before_loading; } ;
struct TYPE_18__ {TYPE_4__ paths; TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_16__ {int ups; int bps; int ips; } ;
struct TYPE_19__ {TYPE_3__ name; } ;
typedef TYPE_6__ global_t ;
struct TYPE_15__ {scalar_t__ size; int * data; } ;
struct TYPE_20__ {char* directory_system; char* name_ips; char* name_bps; char* name_ups; int block_extract; int need_fullpath; int set_supports_no_game_enable; TYPE_2__ subsystem; int * valid_extensions; int * directory_cache; void* bios_is_missing; void* patch_is_blocked; void* is_ups_pref; void* is_bps_pref; void* is_ips_pref; int check_firmware_before_loading; } ;
typedef TYPE_7__ content_information_ctx_t ;
struct TYPE_21__ {scalar_t__ environ_get; } ;
typedef TYPE_8__ content_ctx_info_t ;


 int CORE_TYPE_PLAIN ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int RARCH_CTL_IS_BPS_PREF ;
 int RARCH_CTL_IS_IPS_PREF ;
 int RARCH_CTL_IS_MISSING_BIOS ;
 int RARCH_CTL_IS_PATCH_BLOCKED ;
 int RARCH_CTL_IS_UPS_PREF ;
 int RARCH_ERR (char*,char*) ;
 int RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ;
 int RARCH_PATH_CONTENT ;
 TYPE_5__* config_get_ptr () ;
 int content_load (TYPE_8__*) ;
 scalar_t__ firmware_update_status (TYPE_7__*) ;
 int free (char*) ;
 TYPE_6__* global_get_ptr () ;
 scalar_t__ menu_content_environment_get ;
 int menu_driver_ctl (int ,int *) ;
 int path_clear (int ) ;
 void* rarch_ctl (int ,int *) ;
 int retroarch_menu_running () ;
 int retroarch_set_current_core_type (int ,int) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 void* strdup (int ) ;
 int string_is_empty (int ) ;
 int task_push_to_history_list (int,int) ;

bool task_push_start_current_core(content_ctx_info_t *content_info)
{
   content_information_ctx_t content_ctx;

   bool ret = 1;
   char *error_string = ((void*)0);
   global_t *global = global_get_ptr();
   settings_t *settings = config_get_ptr();

   if (!content_info)
      return 0;

   content_ctx.check_firmware_before_loading = settings->bools.check_firmware_before_loading;
   content_ctx.is_ips_pref = rarch_ctl(RARCH_CTL_IS_IPS_PREF, ((void*)0));
   content_ctx.is_bps_pref = rarch_ctl(RARCH_CTL_IS_BPS_PREF, ((void*)0));
   content_ctx.is_ups_pref = rarch_ctl(RARCH_CTL_IS_UPS_PREF, ((void*)0));
   content_ctx.patch_is_blocked = rarch_ctl(RARCH_CTL_IS_PATCH_BLOCKED, ((void*)0));
   content_ctx.bios_is_missing = rarch_ctl(RARCH_CTL_IS_MISSING_BIOS, ((void*)0));
   content_ctx.directory_system = ((void*)0);
   content_ctx.directory_cache = ((void*)0);
   content_ctx.name_ips = ((void*)0);
   content_ctx.name_bps = ((void*)0);
   content_ctx.name_ups = ((void*)0);
   content_ctx.valid_extensions = ((void*)0);
   content_ctx.block_extract = 0;
   content_ctx.need_fullpath = 0;
   content_ctx.set_supports_no_game_enable = 0;

   content_ctx.subsystem.data = ((void*)0);
   content_ctx.subsystem.size = 0;

   if (global)
   {
      if (!string_is_empty(global->name.ips))
         content_ctx.name_ips = strdup(global->name.ips);
      if (!string_is_empty(global->name.bps))
         content_ctx.name_bps = strdup(global->name.bps);
      if (!string_is_empty(global->name.ups))
         content_ctx.name_ups = strdup(global->name.ups);
   }

   if (!string_is_empty(settings->paths.directory_system))
      content_ctx.directory_system = strdup(settings->paths.directory_system);

   if (!content_info->environ_get)
      content_info->environ_get = menu_content_environment_get;


   path_clear(RARCH_PATH_CONTENT);



   retroarch_set_current_core_type(CORE_TYPE_PLAIN, 1);


   if (firmware_update_status(&content_ctx))
      goto end;


   if (!content_load(content_info))
   {
      if (error_string)
      {
         runloop_msg_queue_push(error_string, 2, 90, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
         RARCH_ERR("%s\n", error_string);
         free(error_string);
      }

      retroarch_menu_running();

      ret = 0;
      goto end;
   }
   else
      task_push_to_history_list(1, 0);






end:
   if (content_ctx.name_ips)
      free(content_ctx.name_ips);
   if (content_ctx.name_bps)
      free(content_ctx.name_bps);
   if (content_ctx.name_ups)
      free(content_ctx.name_ups);
   if (content_ctx.directory_system)
      free(content_ctx.directory_system);

   return ret;
}
