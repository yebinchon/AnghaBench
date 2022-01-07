
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int retro_task_t ;
typedef int msg ;
typedef int display_name ;
typedef int device_type ;
struct TYPE_8__ {char* path; } ;
typedef TYPE_1__ config_file_t ;
struct TYPE_9__ {size_t idx; char* name; } ;
typedef TYPE_2__ autoconfig_params_t ;


 int MSG_DEVICE_CONFIGURED_IN_PORT ;
 int config_get_array (TYPE_1__*,char*,char*,int) ;
 scalar_t__ config_get_bool (TYPE_1__*,char*,int*) ;
 int * input_autoconf_binds ;
 int input_autoconfigure_joypad_conf (TYPE_1__*,int ) ;
 int input_autoconfigure_joypad_reindex_devices () ;
 int input_autoconfigure_swap_override ;
 int* input_autoconfigured ;
 int input_config_set_device_config_name (int,char*) ;
 int input_config_set_device_config_path (int,char*) ;
 int input_config_set_device_display_name (int,char*) ;
 char* msg_hash_to_str (int ) ;
 char* path_basename (char*) ;
 int snprintf (char*,int,char*,char const*,char*,size_t) ;
 int strdup (char*) ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int task_free_title (int *) ;
 int task_set_title (int *,int ) ;

__attribute__((used)) static void input_autoconfigure_joypad_add(config_file_t *conf,
      autoconfig_params_t *params, retro_task_t *task)
{
   char msg[128], display_name[128], device_type[128];


   bool block_osd_spam =



      input_autoconfigured[params->idx]
      && !string_is_empty(params->name);


   msg[0] = display_name[0] = device_type[0] = '\0';

   config_get_array(conf, "input_device_display_name",
         display_name, sizeof(display_name));
   config_get_array(conf, "input_device_type", device_type,
         sizeof(device_type));

   input_autoconfigured[params->idx] = 1;

   input_autoconfigure_joypad_conf(conf,
         input_autoconf_binds[params->idx]);

   if (string_is_equal(device_type, "remote"))
   {
      static bool remote_is_bound = 0;
      const char *autoconfig_str = (string_is_empty(display_name) &&
            !string_is_empty(params->name)) ? params->name : (!string_is_empty(display_name) ? display_name : "N/A");
      strlcpy(msg, autoconfig_str, sizeof(msg));
      strlcat(msg, " configured.", sizeof(msg));

      if (!remote_is_bound)
      {
         task_free_title(task);
         task_set_title(task, strdup(msg));
      }
      remote_is_bound = 1;
      if (params->idx == 0)
         input_autoconfigure_swap_override = 1;
   }
   else
   {
      bool tmp = 0;
      const char *autoconfig_str = (string_is_empty(display_name) &&
            !string_is_empty(params->name))
            ? params->name : (!string_is_empty(display_name) ? display_name : "N/A");

      snprintf(msg, sizeof(msg), "%s %s #%u.",
            autoconfig_str,
            msg_hash_to_str(MSG_DEVICE_CONFIGURED_IN_PORT),
            params->idx);


      if (params->idx == 0)
      {
         if (config_get_bool(conf, "input_swap_override", &tmp))
            input_autoconfigure_swap_override = tmp;
         else
            input_autoconfigure_swap_override = 0;
      }

      if (!block_osd_spam)
      {
         task_free_title(task);
         task_set_title(task, strdup(msg));
      }
   }
   if (!string_is_empty(display_name))
      input_config_set_device_display_name(params->idx, display_name);
   else
      input_config_set_device_display_name(params->idx, params->name);
   if (!string_is_empty(conf->path))
   {
      input_config_set_device_config_name(params->idx, path_basename(conf->path));
      input_config_set_device_config_path(params->idx, conf->path);
   }
   else
   {
      input_config_set_device_config_name(params->idx, "N/A");
      input_config_set_device_config_path(params->idx, "N/A");
   }

   input_autoconfigure_joypad_reindex_devices();
}
