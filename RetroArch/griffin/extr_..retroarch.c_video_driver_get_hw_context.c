
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_hw_render_callback {int dummy; } ;


 struct retro_hw_render_callback* video_driver_get_hw_context_internal () ;

struct retro_hw_render_callback *video_driver_get_hw_context(void)
{
   return video_driver_get_hw_context_internal();
}
