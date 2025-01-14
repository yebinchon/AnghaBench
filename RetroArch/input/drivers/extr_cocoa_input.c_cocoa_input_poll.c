
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {size_t touch_count; int mouse_rel_y; int mouse_y_last; int mouse_rel_x; int mouse_x_last; TYPE_3__* sec_joypad; TYPE_2__* joypad; TYPE_1__* touches; } ;
typedef TYPE_4__ cocoa_input_data_t ;
struct TYPE_7__ {int (* poll ) () ;} ;
struct TYPE_6__ {int (* poll ) () ;} ;
struct TYPE_5__ {float screen_x; float screen_y; int full_y; int full_x; int fixed_y; int fixed_x; } ;


 float get_backing_scale_factor () ;
 int stub1 () ;
 int stub2 () ;
 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,float,float,int *,int *,int *,int *) ;

__attribute__((used)) static void cocoa_input_poll(void *data)
{
   uint32_t i;
   cocoa_input_data_t *apple = (cocoa_input_data_t*)data;

   float backing_scale_factor = get_backing_scale_factor();


   if (!apple)
      return;

   for (i = 0; i < apple->touch_count; i++)
   {
      struct video_viewport vp;

      vp.x = 0;
      vp.y = 0;
      vp.width = 0;
      vp.height = 0;
      vp.full_width = 0;
      vp.full_height = 0;


      apple->touches[i].screen_x *= backing_scale_factor;
      apple->touches[i].screen_y *= backing_scale_factor;

      video_driver_translate_coord_viewport_wrap(
            &vp,
            apple->touches[i].screen_x,
            apple->touches[i].screen_y,
            &apple->touches[i].fixed_x,
            &apple->touches[i].fixed_y,
            &apple->touches[i].full_x,
            &apple->touches[i].full_y);
   }

   if (apple->joypad)
      apple->joypad->poll();
   if (apple->sec_joypad)
       apple->sec_joypad->poll();

    apple->mouse_x_last = apple->mouse_rel_x;
    apple->mouse_y_last = apple->mouse_rel_y;
}
