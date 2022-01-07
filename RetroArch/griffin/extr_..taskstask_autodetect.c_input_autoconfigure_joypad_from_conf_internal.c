
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int retro_task_t ;
typedef int config_file_t ;
struct TYPE_4__ {int autoconfig_directory; } ;
typedef TYPE_1__ autoconfig_params_t ;


 int * config_file_new_from_string (scalar_t__,int *) ;
 scalar_t__ input_autoconfigure_joypad_from_conf (int *,TYPE_1__*,int *) ;
 scalar_t__* input_builtin_autoconfs ;
 scalar_t__ string_is_empty (int ) ;

__attribute__((used)) static bool input_autoconfigure_joypad_from_conf_internal(
      autoconfig_params_t *params, retro_task_t *task)
{
   size_t i;


   for (i = 0; input_builtin_autoconfs[i]; i++)
   {
      config_file_t *conf = config_file_new_from_string(
            input_builtin_autoconfs[i], ((void*)0));
      if (conf && input_autoconfigure_joypad_from_conf(conf, params, task))
        return 1;
   }

   if (string_is_empty(params->autoconfig_directory))
      return 1;
   return 0;
}
