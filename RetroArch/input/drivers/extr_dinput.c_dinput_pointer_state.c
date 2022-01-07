
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; int y; int x; } ;
struct pointer_status {int pointer_x; int pointer_y; struct pointer_status* next; } ;
struct TYPE_2__ {struct pointer_status* next; } ;
struct dinput_input {int mouse_x; int mouse_y; int mouse_l; TYPE_1__ pointer_head; } ;
typedef int int16_t ;





 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int,int,int*,int*,int*,int*) ;

__attribute__((used)) static int16_t dinput_pointer_state(struct dinput_input *di,
      unsigned idx, unsigned id, bool screen)
{
   struct video_viewport vp;
   bool pointer_down = 0;
   bool inside = 0;
   int x = 0;
   int y = 0;
   int16_t res_x = 0;
   int16_t res_y = 0;
   int16_t res_screen_x = 0;
   int16_t res_screen_y = 0;
   unsigned num = 0;
   struct pointer_status *
      check_pos = di->pointer_head.next;

   vp.x = 0;
   vp.y = 0;
   vp.width = 0;
   vp.height = 0;
   vp.full_width = 0;
   vp.full_height = 0;

   while (check_pos && num < idx)
   {
      num++;
      check_pos = check_pos->next;
   }
   if (!check_pos && idx > 0)
      return 0;

   x = di->mouse_x;
   y = di->mouse_y;
   pointer_down = di->mouse_l;

   if (check_pos)
   {
      x = check_pos->pointer_x;
      y = check_pos->pointer_y;
      pointer_down = 1;
   }

   if (!(video_driver_translate_coord_viewport_wrap(&vp, x, y,
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
         return pointer_down;
      default:
         break;
   }

   return 0;
}
