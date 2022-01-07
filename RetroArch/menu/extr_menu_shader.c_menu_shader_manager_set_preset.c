
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {int dummy; } ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef int config_file_t ;


 int CMD_EVENT_SHADER_PRESET_LOADED ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int RARCH_LOG (char*,char const*) ;
 int command_event (int ,int *) ;
 int config_file_free (int *) ;
 int menu_entries_ctl (int ,int*) ;
 int menu_shader_manager_clear_num_passes (struct video_shader*) ;
 int retroarch_apply_shader (int,char const*,int) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ video_shader_read_conf_preset (int *,struct video_shader*) ;
 int * video_shader_read_preset (char const*) ;
 int video_shader_resolve_parameters (int *,struct video_shader*) ;

bool menu_shader_manager_set_preset(struct video_shader *shader,
      enum rarch_shader_type type, const char *preset_path, bool apply)
{
   config_file_t *conf = ((void*)0);
   bool refresh = 0;
   bool ret = 0;

   if (apply && !retroarch_apply_shader(type, preset_path, 1))
   {







      menu_shader_manager_clear_num_passes(shader);
      command_event(CMD_EVENT_SHADER_PRESET_LOADED, ((void*)0));
      return 0;
   }

   if (string_is_empty(preset_path))
   {
      menu_shader_manager_clear_num_passes(shader);
      command_event(CMD_EVENT_SHADER_PRESET_LOADED, ((void*)0));
      return 1;
   }

   if (!shader)
   {
      ret = 0;
      goto end;
   }





   if (!(conf = video_shader_read_preset(preset_path)))
   {
      ret = 0;
      goto end;
   }

   RARCH_LOG("Setting Menu shader: %s.\n", preset_path);

   if (video_shader_read_conf_preset(conf, shader))
      video_shader_resolve_parameters(conf, shader);

   if (conf)
      config_file_free(conf);

   ret = 1;

end:
   command_event(CMD_EVENT_SHADER_PRESET_LOADED, ((void*)0));



   return ret;
}
