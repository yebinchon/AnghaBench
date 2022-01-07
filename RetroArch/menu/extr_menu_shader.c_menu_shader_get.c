
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader {int dummy; } ;


 struct video_shader* menu_driver_shader ;
 scalar_t__ video_shader_any_supported () ;

struct video_shader *menu_shader_get(void)
{
   if (video_shader_any_supported())
      return menu_driver_shader;
   return ((void*)0);
}
