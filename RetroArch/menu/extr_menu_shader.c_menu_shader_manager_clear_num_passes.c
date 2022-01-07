
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {scalar_t__ passes; } ;


 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int menu_driver_shader_modified ;
 int menu_entries_ctl (int ,int*) ;
 int video_shader_resolve_parameters (int *,struct video_shader*) ;

int menu_shader_manager_clear_num_passes(struct video_shader *shader)
{
   bool refresh = 0;

   if (!shader)
      return 0;

   shader->passes = 0;





   video_shader_resolve_parameters(((void*)0), shader);

   menu_driver_shader_modified = 1;

   return 0;
}
