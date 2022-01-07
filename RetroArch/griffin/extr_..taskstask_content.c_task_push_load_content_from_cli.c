
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_callback_t ;
typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
typedef int content_ctx_info_t ;


 int task_load_content_callback (int *,int,int) ;

bool task_push_load_content_from_cli(
      const char *core_path,
      const char *fullpath,
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{

   if (!task_load_content_callback(content_info, 1, 1))
      return 0;

   return 1;
}
