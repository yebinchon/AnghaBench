
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum auto_shader_type { ____Placeholder_auto_shader_type } auto_shader_type ;


 int AUTO_SHADER_OP_REMOVE ;
 int menu_shader_manager_operate_auto_preset (int ,int *,int,int) ;

bool menu_shader_manager_remove_auto_preset(enum auto_shader_type type)
{
   return menu_shader_manager_operate_auto_preset(
         AUTO_SHADER_OP_REMOVE, ((void*)0), type, 0);
}
