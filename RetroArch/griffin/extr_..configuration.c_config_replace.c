
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ content_ctx_info_t ;


 int RARCH_CTL_UNSET_BLOCK_CONFIG_READ ;
 int RARCH_PATH_CONFIG ;
 int RARCH_PATH_CORE ;
 int config_save_file (char const*) ;
 int path_clear (int ) ;
 char* path_get (int ) ;
 int path_is_empty (int ) ;
 int path_set (int ,char*) ;
 int rarch_ctl (int ,int *) ;
 scalar_t__ string_is_equal (char*,char const*) ;
 int task_push_start_dummy_core (TYPE_1__*) ;

bool config_replace(bool config_replace_save_on_exit, char *path)
{
   content_ctx_info_t content_info = {0};
   const char *rarch_path_config = path_get(RARCH_PATH_CONFIG);



   if (string_is_equal(path, rarch_path_config))
      return 0;

   if (config_replace_save_on_exit && !path_is_empty(RARCH_PATH_CONFIG))
      config_save_file(rarch_path_config);

   path_set(RARCH_PATH_CONFIG, path);

   rarch_ctl(RARCH_CTL_UNSET_BLOCK_CONFIG_READ, ((void*)0));


   path_clear(RARCH_PATH_CORE);

   return task_push_start_dummy_core(&content_info);
}
