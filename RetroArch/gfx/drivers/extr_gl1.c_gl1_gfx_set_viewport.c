
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned int height; scalar_t__ aspect_ratio_idx; int custom_vp_x; unsigned int custom_vp_y; unsigned int custom_vp_height; unsigned int custom_vp_width; scalar_t__ scale_integer; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_12__ {unsigned int width; unsigned int height; int x; int y; } ;
struct TYPE_10__ {unsigned int vp_out_width; unsigned int vp_out_height; TYPE_4__ vp; scalar_t__ keep_aspect; } ;
typedef TYPE_2__ gl1_t ;
struct TYPE_11__ {float* aspect; unsigned int width; unsigned int height; } ;
typedef TYPE_3__ gfx_ctx_aspect_t ;


 scalar_t__ ASPECT_RATIO_CUSTOM ;
 int RARCH_LOG (char*,unsigned int,unsigned int) ;
 float fabsf (float) ;
 int gl1_default_ortho ;
 int gl1_set_projection (TYPE_2__*,int *,int) ;
 int glViewport (int,int,unsigned int,unsigned int) ;
 scalar_t__ roundf (float) ;
 int video_context_driver_translate_aspect (TYPE_3__*) ;
 float video_driver_get_aspect_ratio () ;
 int video_viewport_get_scaled_integer (TYPE_4__*,unsigned int,unsigned int,float,scalar_t__) ;

void gl1_gfx_set_viewport(gl1_t *gl1,
      video_frame_info_t *video_info,
      unsigned viewport_width,
      unsigned viewport_height,
      bool force_full, bool allow_rotate)
{
   gfx_ctx_aspect_t aspect_data;
   int x = 0;
   int y = 0;
   float device_aspect = (float)viewport_width / viewport_height;
   unsigned height = video_info->height;

   aspect_data.aspect = &device_aspect;
   aspect_data.width = viewport_width;
   aspect_data.height = viewport_height;

   video_context_driver_translate_aspect(&aspect_data);

   if (video_info->scale_integer && !force_full)
   {
      video_viewport_get_scaled_integer(&gl1->vp,
            viewport_width, viewport_height,
            video_driver_get_aspect_ratio(), gl1->keep_aspect);
      viewport_width = gl1->vp.width;
      viewport_height = gl1->vp.height;
   }
   else if (gl1->keep_aspect && !force_full)
   {
      float desired_aspect = video_driver_get_aspect_ratio();
      {
         float delta;

         if (fabsf(device_aspect - desired_aspect) < 0.0001f)
         {




         }
         else if (device_aspect > desired_aspect)
         {
            delta = (desired_aspect / device_aspect - 1.0f) / 2.0f + 0.5f;
            x = (int)roundf(viewport_width * (0.5f - delta));
            viewport_width = (unsigned)roundf(2.0f * viewport_width * delta);
         }
         else
         {
            delta = (device_aspect / desired_aspect - 1.0f) / 2.0f + 0.5f;
            y = (int)roundf(viewport_height * (0.5f - delta));
            viewport_height = (unsigned)roundf(2.0f * viewport_height * delta);
         }
      }

      gl1->vp.x = x;
      gl1->vp.y = y;
      gl1->vp.width = viewport_width;
      gl1->vp.height = viewport_height;
   }
   else
   {
      gl1->vp.x = gl1->vp.y = 0;
      gl1->vp.width = viewport_width;
      gl1->vp.height = viewport_height;
   }







   glViewport(gl1->vp.x, gl1->vp.y, gl1->vp.width, gl1->vp.height);
   gl1_set_projection(gl1, &gl1_default_ortho, allow_rotate);


   if (!force_full)
   {
      gl1->vp_out_width = viewport_width;
      gl1->vp_out_height = viewport_height;
   }




}
