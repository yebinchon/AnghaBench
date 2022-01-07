
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int retro_task_callback_t ;
struct TYPE_4__ {char* label; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef TYPE_2__ global_t ;
typedef int content_ctx_info_t ;


 int CMD_EVENT_LOAD_CORE ;
 int RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ;
 int RARCH_PATH_CONTENT ;
 int RARCH_PATH_CORE ;
 int _launched_from_cli ;
 int command_event (int ,int *) ;
 TYPE_2__* global_get_ptr () ;
 int menu_driver_ctl (int ,int *) ;
 int path_set (int ,char const*) ;
 int strlcpy (char*,char const*,int) ;
 int task_load_content_callback (int *,int,int) ;

bool task_push_load_content_with_new_core_from_companion_ui(
      const char *core_path,
      const char *fullpath,
      const char *label,
      content_ctx_info_t *content_info,
      retro_task_callback_t cb,
      void *user_data)
{
   global_t *global = global_get_ptr();

   path_set(RARCH_PATH_CONTENT, fullpath);
   path_set(RARCH_PATH_CORE, core_path);




   _launched_from_cli = 0;

   if (global)
   {
      if (label)
         strlcpy(global->name.label, label, sizeof(global->name.label));
      else
         global->name.label[0] = '\0';
   }


   if (!task_load_content_callback(content_info, 1, 0))
      return 0;






   return 1;
}
