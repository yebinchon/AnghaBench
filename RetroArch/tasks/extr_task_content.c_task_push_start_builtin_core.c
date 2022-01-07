
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_callback_t ;
typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
typedef int content_ctx_info_t ;


 int RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ;
 int RARCH_PATH_CONTENT ;
 int menu_driver_ctl (int ,int *) ;
 int path_clear (int ) ;
 int retroarch_menu_running () ;
 int retroarch_set_current_core_type (int,int) ;
 int task_load_content_callback (int *,int,int) ;

bool task_push_start_builtin_core(
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{

   path_clear(RARCH_PATH_CONTENT);



   retroarch_set_current_core_type(type, 1);


   if (!task_load_content_callback(content_info, 1, 0))
   {
      retroarch_menu_running();
      return 0;
   }






   return 1;
}
