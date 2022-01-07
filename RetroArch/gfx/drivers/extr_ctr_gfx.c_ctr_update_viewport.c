
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int custom_vp_x; int custom_vp_y; float custom_vp_width; float custom_vp_height; } ;
typedef TYPE_3__ video_frame_info_t ;
struct TYPE_12__ {scalar_t__ video_aspect_ratio_idx; } ;
struct TYPE_11__ {scalar_t__ video_scale_integer; } ;
struct TYPE_14__ {TYPE_2__ uints; TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_16__ {float full_width; float full_height; int x; int y; float width; float height; } ;
struct TYPE_15__ {int rotation; int should_resize; TYPE_6__ vp; scalar_t__ keep_aspect; } ;
typedef TYPE_5__ ctr_video_t ;


 scalar_t__ ASPECT_RATIO_CUSTOM ;
 int ctr_set_screen_coords (TYPE_5__*) ;
 float fabsf (float) ;
 scalar_t__ roundf (float) ;
 float video_driver_get_aspect_ratio () ;
 int video_viewport_get_scaled_integer (TYPE_6__*,float,float,float,scalar_t__) ;

__attribute__((used)) static void ctr_update_viewport(ctr_video_t* ctr, settings_t *settings, video_frame_info_t *video_info)
{
   int x = 0;
   int y = 0;
   float width = ctr->vp.full_width;
   float height = ctr->vp.full_height;
   float desired_aspect = video_driver_get_aspect_ratio();

   if(ctr->rotation & 0x1)
      desired_aspect = 1.0 / desired_aspect;

   if (settings->bools.video_scale_integer)
   {
      video_viewport_get_scaled_integer(&ctr->vp, ctr->vp.full_width,
            ctr->vp.full_height, desired_aspect, ctr->keep_aspect);
   }
   else if (ctr->keep_aspect)
   {
      {
         float delta;
         float device_aspect = ((float)ctr->vp.full_width) / ctr->vp.full_height;

         if (fabsf(device_aspect - desired_aspect) < 0.0001f)
         {




         }
         else if (device_aspect > desired_aspect)
         {
            delta = (desired_aspect / device_aspect - 1.0f)
               / 2.0f + 0.5f;
            x = (int)roundf(width * (0.5f - delta));
            width = (unsigned)roundf(2.0f * width * delta);
         }
         else
         {
            delta = (device_aspect / desired_aspect - 1.0f)
               / 2.0f + 0.5f;
            y = (int)roundf(height * (0.5f - delta));
            height = (unsigned)roundf(2.0f * height * delta);
         }
      }

      ctr->vp.x = x;
      ctr->vp.y = y;
      ctr->vp.width = width;
      ctr->vp.height = height;
   }
   else
   {
      ctr->vp.x = ctr->vp.y = 0;
      ctr->vp.width = width;
      ctr->vp.height = height;
   }

   ctr_set_screen_coords(ctr);

   ctr->should_resize = 0;

}
