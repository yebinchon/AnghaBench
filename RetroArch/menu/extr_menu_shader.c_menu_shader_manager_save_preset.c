
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {int dummy; } ;


 int menu_shader_manager_save_preset_internal (struct video_shader const*,char const*,int,int) ;

bool menu_shader_manager_save_preset(const struct video_shader *shader,
      const char *basename, bool apply)
{
   return menu_shader_manager_save_preset_internal(
         shader, basename, apply, 0);
}
