
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; int y; int x; } ;
struct pointer_status {int pointer_x; int pointer_y; struct pointer_status* next; } ;
struct TYPE_2__ {struct pointer_status* next; } ;
struct dinput_input {int mouse_x; int mouse_y; TYPE_1__ pointer_head; } ;
typedef int const int16_t ;





 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int,int,int const*,int const*,int const*,int const*) ;

__attribute__((used)) static int16_t dinput_lightgun_aiming_state( struct dinput_input *di, unsigned idx, unsigned id)
{
   const int edge_detect = 32700;
   struct video_viewport vp;
   bool inside = 0;
   int x = 0;
   int y = 0;
   int16_t res_x = 0;
   int16_t res_y = 0;
   int16_t res_screen_x = 0;
   int16_t res_screen_y = 0;
   unsigned num = 0;

   struct pointer_status* check_pos = di->pointer_head.next;

   vp.x = 0;
   vp.y = 0;
   vp.width = 0;
   vp.height = 0;
   vp.full_width = 0;
   vp.full_height = 0;

   while ( check_pos && num < idx)
   {
      num++;
      check_pos = check_pos->next;
   }

   if (!check_pos && idx > 0)
      return 0;

   x = di->mouse_x;
   y = di->mouse_y;

   if (check_pos)
   {
      x = check_pos->pointer_x;
      y = check_pos->pointer_y;
   }

   if ( !( video_driver_translate_coord_viewport_wrap(
               &vp, x, y, &res_x, &res_y, &res_screen_x, &res_screen_y)))
      return 0;

   inside = (res_x >= -edge_detect) && (res_y >= -edge_detect) && (res_x <= edge_detect) && (res_y <= edge_detect);

   switch (id)
   {
      case 129:
         return inside ? res_x : 0;
      case 128:
         return inside ? res_y : 0;
      case 130:
         return !inside;
      default:
         break;
   }

   return 0;
}
