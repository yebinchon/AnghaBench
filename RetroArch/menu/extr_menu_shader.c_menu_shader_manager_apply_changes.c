
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {scalar_t__ passes; } ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int RARCH_SHADER_NONE ;
 int menu_shader_manager_get_type (struct video_shader*) ;
 int menu_shader_manager_save_preset (struct video_shader*,int *,int) ;
 int menu_shader_manager_set_preset (int *,int,int *,int) ;

void menu_shader_manager_apply_changes(struct video_shader *shader)
{
   enum rarch_shader_type type = RARCH_SHADER_NONE;

   if (!shader)
      return;

   type = menu_shader_manager_get_type(shader);

   if (shader->passes && type != RARCH_SHADER_NONE)
   {
      menu_shader_manager_save_preset(shader, ((void*)0), 1);
      return;
   }

   menu_shader_manager_set_preset(((void*)0), type, ((void*)0), 1);
}
