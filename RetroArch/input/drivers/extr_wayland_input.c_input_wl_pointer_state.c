
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
typedef int int16_t ;
struct TYPE_4__ {int left; int y; int x; } ;
struct TYPE_5__ {TYPE_1__ mouse; } ;
typedef TYPE_2__ input_ctx_wayland_data_t ;





 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int ,int ,int*,int*,int*,int*) ;

__attribute__((used)) static int16_t input_wl_pointer_state(input_ctx_wayland_data_t *wl,
      unsigned idx, unsigned id, bool screen)
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

   if (!(video_driver_translate_coord_viewport_wrap(&vp,
         wl->mouse.x, wl->mouse.y,
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
         return wl->mouse.left;
   }

   return 0;
}
