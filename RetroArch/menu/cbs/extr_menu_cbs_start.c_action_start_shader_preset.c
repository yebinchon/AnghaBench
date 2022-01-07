
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {scalar_t__ passes; } ;


 int CMD_EVENT_SHADERS_APPLY_CHANGES ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int command_event (int ,int *) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;
 struct video_shader* menu_shader_get () ;

__attribute__((used)) static int action_start_shader_preset(unsigned type, const char *label)
{
   return 0;
}
