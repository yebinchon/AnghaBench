
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* path; } ;
struct video_shader_pass {TYPE_1__ source; } ;
struct video_shader {struct video_shader_pass* pass; } ;


 int menu_driver_shader_modified ;

void menu_shader_manager_clear_pass_path(struct video_shader *shader,
      unsigned i)
{
   struct video_shader_pass *shader_pass = shader ?
      &shader->pass[i] : ((void*)0);

   if (shader_pass)
      *shader_pass->source.path = '\0';

   menu_driver_shader_modified = 1;
}
