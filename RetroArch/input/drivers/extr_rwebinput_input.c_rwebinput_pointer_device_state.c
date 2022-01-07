
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_3__ {int buttons; int x; } ;
typedef TYPE_1__ rwebinput_mouse_state_t ;
typedef int int16_t ;





 int RWEBINPUT_MOUSE_BTNL ;
 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int ,int ,int*,int*,int*,int*) ;

__attribute__((used)) static int16_t rwebinput_pointer_device_state(rwebinput_mouse_state_t *mouse,
   unsigned id, bool screen)
{
   struct video_viewport vp;
   bool inside = 0;
   int16_t res_x = 0;
   int16_t res_y = 0;
   int16_t res_screen_x = 0;
   int16_t res_screen_y = 0;

   vp.x = 0;
   vp.y = 0;
   vp.width = 0;
   vp.height = 0;
   vp.full_width = 0;
   vp.full_height = 0;

   if (!(video_driver_translate_coord_viewport_wrap(&vp, mouse->x, mouse->x,
         &res_x, &res_y, &res_screen_x, &res_screen_y)))
      return 0;

   if (screen)
   {
      res_x = res_screen_x;
      res_y = res_screen_y;
   }

   inside = (res_x >= -0x7fff) && (res_y >= -0x7fff);

   if (!inside)
      return 0;

   switch (id)
   {
      case 129:
         return res_x;
      case 128:
         return res_y;
      case 130:
         return !!(mouse->buttons & (1 << RWEBINPUT_MOUSE_BTNL));
   }

   return 0;
}
