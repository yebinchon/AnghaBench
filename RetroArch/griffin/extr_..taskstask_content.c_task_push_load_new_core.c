
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_callback_t ;
typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
typedef int content_ctx_info_t ;


 int CMD_EVENT_LOAD_CORE ;
 int FRONTEND_FORK_CORE ;
 int RARCH_PATH_CORE ;
 int command_event (int ,int *) ;
 int frontend_driver_set_fork (int ) ;
 int path_set (int ,char const*) ;
 int retroarch_set_current_core_type (int,int) ;

bool task_push_load_new_core(
      const char *core_path,
      const char *fullpath,
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{
   path_set(RARCH_PATH_CORE, core_path);


   command_event(CMD_EVENT_LOAD_CORE, ((void*)0));



   if (!frontend_driver_set_fork(FRONTEND_FORK_CORE))
      return 0;




   retroarch_set_current_core_type(type, 1);

   return 1;
}
