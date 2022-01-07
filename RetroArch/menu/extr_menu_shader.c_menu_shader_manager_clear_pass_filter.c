
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader_pass {int filter; } ;
struct video_shader {struct video_shader_pass* pass; } ;


 int RARCH_FILTER_UNSPEC ;
 int menu_driver_shader_modified ;

int menu_shader_manager_clear_pass_filter(struct video_shader *shader,
      unsigned i)
{
   struct video_shader_pass *shader_pass = shader ?
      &shader->pass[i] : ((void*)0);

   if (!shader_pass)
      return -1;

   shader_pass->filter = RARCH_FILTER_UNSPEC;

   menu_driver_shader_modified = 1;

   return 0;
}
