
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int menu_savestate_resume; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;


 int CMD_EVENT_RESUME ;
 int CMD_EVENT_SAVE_STATE ;
 TYPE_2__* config_get_ptr () ;
 int generic_action_ok_command (int ) ;
 int menu_cbs_exit () ;

__attribute__((used)) static int action_ok_save_state(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   settings_t *settings = config_get_ptr();
   bool resume = 1;

   if (settings)
      resume = settings->bools.menu_savestate_resume;

   if (generic_action_ok_command(CMD_EVENT_SAVE_STATE) == -1)
      return menu_cbs_exit();

   if (resume)
      return generic_action_ok_command(CMD_EVENT_RESUME);

   return 0;
}
