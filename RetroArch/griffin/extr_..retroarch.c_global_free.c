
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct global {int dummy; } ;
struct TYPE_6__ {int remapfile; } ;
struct TYPE_7__ {TYPE_1__ name; } ;
typedef TYPE_2__ global_t ;
struct TYPE_8__ {int has_set_input_descriptors; } ;


 int CMD_EVENT_LOG_FILE_DEINIT ;
 int CMD_EVENT_RECORD_DEINIT ;
 int RARCH_CTL_UNSET_BPS_PREF ;
 int RARCH_CTL_UNSET_IPS_PREF ;
 int RARCH_CTL_UNSET_UPS_PREF ;
 int command_event (int ,int *) ;
 int content_deinit () ;
 TYPE_5__ current_core ;
 int dir_clear_all () ;
 int free (int ) ;
 TYPE_2__ g_extern ;
 int memset (TYPE_2__*,int ,int) ;
 int path_clear_all () ;
 int path_deinit_subsystem () ;
 int rarch_block_config_read ;
 int rarch_ctl (int ,int *) ;
 int rarch_is_sram_load_disabled ;
 int rarch_is_sram_save_disabled ;
 int rarch_patch_blocked ;
 int rarch_use_sram ;
 int retroarch_override_setting_free_state () ;
 int runloop_overrides_active ;
 int runloop_remaps_content_dir_active ;
 int runloop_remaps_core_active ;
 int runloop_remaps_game_active ;
 int string_is_empty (int ) ;

__attribute__((used)) static void global_free(void)
{
   global_t *global = ((void*)0);

   content_deinit();

   path_deinit_subsystem();
   command_event(CMD_EVENT_RECORD_DEINIT, ((void*)0));
   command_event(CMD_EVENT_LOG_FILE_DEINIT, ((void*)0));

   rarch_block_config_read = 0;
   rarch_is_sram_load_disabled = 0;
   rarch_is_sram_save_disabled = 0;
   rarch_use_sram = 0;
   rarch_ctl(RARCH_CTL_UNSET_BPS_PREF, ((void*)0));
   rarch_ctl(RARCH_CTL_UNSET_IPS_PREF, ((void*)0));
   rarch_ctl(RARCH_CTL_UNSET_UPS_PREF, ((void*)0));
   rarch_patch_blocked = 0;
   runloop_overrides_active = 0;
   runloop_remaps_core_active = 0;
   runloop_remaps_game_active = 0;
   runloop_remaps_content_dir_active = 0;

   current_core.has_set_input_descriptors = 0;

   global = &g_extern;
   path_clear_all();
   dir_clear_all();

   if (global)
   {
      if (!string_is_empty(global->name.remapfile))
         free(global->name.remapfile);
      memset(global, 0, sizeof(struct global));
   }
   retroarch_override_setting_free_state();
}
