
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int frame; int scaler; } ;
struct TYPE_4__ {int width; int bytes_per_pixel; int height; TYPE_1__ menu; } ;
typedef TYPE_2__ omap_video_t ;
typedef enum scaler_pix_fmt { ____Placeholder_scaler_pix_fmt } scaler_pix_fmt ;


 int SCALER_FMT_ARGB8888 ;
 int SCALER_FMT_RGBA4444 ;
 int video_frame_scale (int *,int ,void const*,int,int,int ,int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void omap_gfx_set_texture_frame(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   omap_video_t *vid = (omap_video_t*)data;
   enum scaler_pix_fmt format = rgb32 ? SCALER_FMT_ARGB8888 : SCALER_FMT_RGBA4444;

   video_frame_scale(
         &vid->menu.scaler,
         vid->menu.frame,
         frame,
         format,
         vid->width,
         vid->height,
         vid->width * vid->bytes_per_pixel,
         width,
         height,
         width * (rgb32 ? sizeof(uint32_t) : sizeof(uint16_t)));
}
