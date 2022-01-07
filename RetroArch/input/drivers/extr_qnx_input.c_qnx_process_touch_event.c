
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_viewport {int full_height; int full_width; int height; int width; int y; int x; } ;
typedef int screen_event_t ;
struct TYPE_6__ {size_t pointer_count; unsigned int* touch_map; TYPE_1__* pointer; } ;
typedef TYPE_2__ qnx_input_t ;
struct TYPE_7__ {int full_x; int full_y; } ;
typedef TYPE_3__ gl_t ;
struct TYPE_5__ {int contact_id; size_t map; int full_y; int full_x; int y; int x; } ;


 unsigned int MAX_TOUCH ;
 int RARCH_LOG (char*,int,int,int,...) ;



 int SCREEN_PROPERTY_SOURCE_POSITION ;
 int SCREEN_PROPERTY_TOUCH_ID ;
 int screen_get_event_property_iv (int ,int ,int*) ;
 scalar_t__ video_driver_get_ptr (int) ;
 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int,int,int *,int *,int *,int *) ;

__attribute__((used)) static void qnx_process_touch_event(
      qnx_input_t *qnx, screen_event_t event, int type)
{
   int contact_id, pos[2];
   unsigned i, j;

   screen_get_event_property_iv(event,
         SCREEN_PROPERTY_TOUCH_ID, (int*)&contact_id);
   screen_get_event_property_iv(event,
         SCREEN_PROPERTY_SOURCE_POSITION, pos);

   switch(type)
   {
      case 128:

         for(i = 0; i < MAX_TOUCH; ++i)
         {
            if(qnx->pointer[i].contact_id == -1)
            {
               struct video_viewport vp;

               vp.x = 0;
               vp.y = 0;
               vp.width = 0;
               vp.height = 0;
               vp.full_width = 0;
               vp.full_height = 0;

               qnx->pointer[i].contact_id = contact_id;

               video_driver_translate_coord_viewport_wrap(
                     &vp,
                     pos[0], pos[1],
                     &qnx->pointer[i].x, &qnx->pointer[i].y,
                     &qnx->pointer[i].full_x, &qnx->pointer[i].full_y);


               qnx->pointer[i].map = qnx->pointer_count;
               qnx->touch_map[qnx->pointer_count] = i;
               qnx->pointer_count++;
               break;
            }
         }






         break;

      case 129:
         for(i = 0; i < MAX_TOUCH; ++i)
         {
            if(qnx->pointer[i].contact_id == contact_id)
            {

               qnx->pointer[i].contact_id = -1;



               qnx->touch_map[qnx->pointer[i].map] = -1;
               for(j = qnx->pointer[i].map; j < qnx->pointer_count; ++j)
               {
                  qnx->touch_map[j] = qnx->touch_map[j+1];
                  qnx->pointer[qnx->touch_map[j+1]].map = j;
                  qnx->touch_map[j+1] = -1;
               }
               qnx->pointer_count--;
               break;
            }
         }






         break;

      case 130:

         for(i = 0; i < qnx->pointer_count; ++i)
         {
            if(qnx->pointer[i].contact_id == contact_id)
            {
               struct video_viewport vp;

               vp.x = 0;
               vp.y = 0;
               vp.width = 0;
               vp.height = 0;
               vp.full_width = 0;
               vp.full_height = 0;
               video_driver_translate_coord_viewport_wrap(&vp,
                     pos[0], pos[1],
                     &qnx->pointer[i].x, &qnx->pointer[i].y,
                     &qnx->pointer[i].full_x, &qnx->pointer[i].full_y);




               break;
            }
         }
         break;
   }
}
