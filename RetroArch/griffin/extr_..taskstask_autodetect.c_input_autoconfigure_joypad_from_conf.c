
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_t ;
typedef int config_file_t ;
typedef int autoconfig_params_t ;


 int config_file_free (int *) ;
 int input_autoconfigure_joypad_add (int *,int *,int *) ;
 int input_autoconfigure_joypad_try_from_conf (int *,int *) ;

__attribute__((used)) static int input_autoconfigure_joypad_from_conf(
      config_file_t *conf, autoconfig_params_t *params, retro_task_t *task)
{
   int ret = input_autoconfigure_joypad_try_from_conf(conf,
         params);

   if (ret)
      input_autoconfigure_joypad_add(conf, params, task);

   config_file_free(conf);

   return ret;
}
