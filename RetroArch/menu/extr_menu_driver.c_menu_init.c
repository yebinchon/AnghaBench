
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int bundle_assets_dst_subdir; int bundle_assets_dst; int bundle_assets_src; } ;
struct TYPE_9__ {scalar_t__ bundle_assets_extract_version_current; scalar_t__ bundle_assets_extract_last_version; } ;
struct TYPE_8__ {scalar_t__ bundle_assets_extract_enable; scalar_t__ config_save_on_exit; scalar_t__ menu_show_start_screen; } ;
struct TYPE_11__ {TYPE_3__ arrays; TYPE_2__ uints; TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
typedef int menu_handle_t ;
struct TYPE_12__ {scalar_t__ allocated; } ;


 int CMD_EVENT_MENU_SAVE_CURRENT_CONFIG ;
 int MENU_DIALOG_HELP_EXTRACT ;
 int MENU_DIALOG_WELCOME ;
 int bundle_decompressed ;
 int command_event (int ,int *) ;
 TYPE_4__* config_get_ptr () ;
 int configuration_set_bool (TYPE_4__*,scalar_t__,int) ;
 scalar_t__ menu_dialog_is_push_pending () ;
 int menu_dialog_push_pending (int,int ) ;
 TYPE_5__ menu_disp_ca ;
 int menu_display_has_windowed ;
 int menu_entries_init () ;
 int menu_input_reset () ;
 int menu_shader_manager_init () ;
 int string_is_empty (int ) ;
 int task_push_decompress (int ,int ,int *,int ,int *,int ,int *,int *) ;
 int video_driver_has_windowed () ;

__attribute__((used)) static bool menu_init(menu_handle_t *menu_data)
{
   settings_t *settings = config_get_ptr();



   menu_input_reset();

   if (!menu_entries_init())
      return 0;

   if (settings->bools.menu_show_start_screen)
   {




      menu_dialog_push_pending(1, MENU_DIALOG_WELCOME);

      configuration_set_bool(settings,
            settings->bools.menu_show_start_screen, 0);

      if (settings->bools.config_save_on_exit)
         command_event(CMD_EVENT_MENU_SAVE_CURRENT_CONFIG, ((void*)0));

   }

   if ( settings->bools.bundle_assets_extract_enable
         && !string_is_empty(settings->arrays.bundle_assets_src)
         && !string_is_empty(settings->arrays.bundle_assets_dst)



         && (settings->uints.bundle_assets_extract_version_current
            != settings->uints.bundle_assets_extract_last_version)

      )
   {
      menu_dialog_push_pending(1, MENU_DIALOG_HELP_EXTRACT);






   }





   menu_disp_ca.allocated = 0;

   menu_display_has_windowed = video_driver_has_windowed();

   return 1;
}
