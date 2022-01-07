
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader_parameter {int maximum; int current; int minimum; int initial; } ;
struct video_shader {struct video_shader_parameter* parameters; } ;


 int MAX (int ,int ) ;
 int MIN (int ,int ) ;
 int menu_driver_shader_modified ;

int menu_shader_manager_clear_parameter(struct video_shader *shader,
      unsigned i)
{
   struct video_shader_parameter *param = shader ?
      &shader->parameters[i] : ((void*)0);

   if (!param)
      return 0;

   param->current = param->initial;
   param->current = MIN(MAX(param->minimum,
            param->current), param->maximum);

   menu_driver_shader_modified = 1;

   return 0;
}
