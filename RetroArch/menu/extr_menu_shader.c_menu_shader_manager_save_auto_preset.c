
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {int dummy; } ;
typedef enum auto_shader_type { ____Placeholder_auto_shader_type } auto_shader_type ;


 int AUTO_SHADER_OP_SAVE ;
 int menu_shader_manager_operate_auto_preset (int ,struct video_shader const*,int,int) ;

bool menu_shader_manager_save_auto_preset(const struct video_shader *shader,
      enum auto_shader_type type, bool apply)
{
   return menu_shader_manager_operate_auto_preset(
         AUTO_SHADER_OP_SAVE, shader, type, apply);
}
