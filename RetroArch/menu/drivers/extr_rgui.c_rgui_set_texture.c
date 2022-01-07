
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef int uint16_t ;
struct video_viewport {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {unsigned int menu_rgui_internal_upscale_level; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {int * data; } ;
struct TYPE_8__ {unsigned int width; unsigned int height; int * data; } ;


 unsigned int RGUI_UPSCALE_AUTO ;
 unsigned int RGUI_UPSCALE_NONE ;
 scalar_t__ calloc (unsigned int,int) ;
 TYPE_2__* config_get_ptr () ;
 int free (int *) ;
 int menu_display_get_fb_size (unsigned int*,unsigned int*,size_t*) ;
 int menu_display_get_framebuffer_dirty_flag () ;
 int menu_display_unset_framebuffer_dirty_flag () ;
 TYPE_4__ rgui_frame_buf ;
 TYPE_3__ rgui_upscale_buf ;
 int video_driver_get_viewport_info (struct video_viewport*) ;
 int video_driver_set_texture_frame (int *,int,unsigned int,unsigned int,float) ;

__attribute__((used)) static void rgui_set_texture(void)
{
   size_t fb_pitch;
   unsigned fb_width, fb_height;
   settings_t *settings = config_get_ptr();

   if (!menu_display_get_framebuffer_dirty_flag())
      return;

   menu_display_get_fb_size(&fb_width, &fb_height,
         &fb_pitch);

   menu_display_unset_framebuffer_dirty_flag();

   if (settings->uints.menu_rgui_internal_upscale_level == RGUI_UPSCALE_NONE)
   {
      video_driver_set_texture_frame(rgui_frame_buf.data,
         0, fb_width, fb_height, 1.0f);
   }
   else
   {

      struct video_viewport vp;
      video_driver_get_viewport_info(&vp);



      if ((vp.width <= fb_width) && (vp.height <= fb_height))
      {
         video_driver_set_texture_frame(rgui_frame_buf.data,
            0, fb_width, fb_height, 1.0f);
      }
      else
      {
         unsigned out_width;
         unsigned out_height;
         uint32_t x_ratio, y_ratio;
         unsigned x_src, y_src;
         unsigned x_dst, y_dst;


         if (settings->uints.menu_rgui_internal_upscale_level == RGUI_UPSCALE_AUTO)
         {
            out_width = ((vp.width / fb_width) + 1) * fb_width;
            out_height = ((vp.height / fb_height) + 1) * fb_height;
         }
         else
         {
            out_width = settings->uints.menu_rgui_internal_upscale_level * fb_width;
            out_height = settings->uints.menu_rgui_internal_upscale_level * fb_height;
         }


         if ((rgui_upscale_buf.width != out_width) || (rgui_upscale_buf.height != out_height) || !rgui_upscale_buf.data)
         {
            rgui_upscale_buf.width = out_width;
            rgui_upscale_buf.height = out_height;

            if (rgui_upscale_buf.data)
            {
               free(rgui_upscale_buf.data);
               rgui_upscale_buf.data = ((void*)0);
            }

            rgui_upscale_buf.data = (uint16_t*)calloc(out_width * out_height, sizeof(uint16_t));
            if (!rgui_upscale_buf.data)
            {



               settings->uints.menu_rgui_internal_upscale_level = RGUI_UPSCALE_NONE;
               video_driver_set_texture_frame(rgui_frame_buf.data,
                  0, fb_width, fb_height, 1.0f);
               return;
            }
         }




         x_ratio = ((fb_width << 16) / out_width);
         y_ratio = ((fb_height << 16) / out_height);

         for (y_dst = 0; y_dst < out_height; y_dst++)
         {
            y_src = (y_dst * y_ratio) >> 16;
            for (x_dst = 0; x_dst < out_width; x_dst++)
            {
               x_src = (x_dst * x_ratio) >> 16;
               rgui_upscale_buf.data[(y_dst * out_width) + x_dst] = rgui_frame_buf.data[(y_src * fb_width) + x_src];
            }
         }


         video_driver_set_texture_frame(rgui_upscale_buf.data,
            0, out_width, out_height, 1.0f);
      }
   }
}
