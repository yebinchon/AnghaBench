
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_callback_t ;
typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
typedef int content_ctx_info_t ;


 int CORE_TYPE_DUMMY ;
 int RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ;
 int RARCH_PATH_CONTENT ;
 int menu_driver_ctl (int ,int *) ;
 int path_set (int ,char const*) ;
 int retroarch_menu_running () ;
 int task_load_content_callback (int *,int,int) ;

bool task_push_load_content_with_core_from_menu(
      const char *fullpath,
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{
   path_set(RARCH_PATH_CONTENT, fullpath);


   if (!task_load_content_callback(content_info, 1, 0))
   {
      retroarch_menu_running();
      return 0;
   }







   return 1;
}
