
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {TYPE_3__* frame; int scaler; } ;
struct TYPE_5__ {TYPE_1__ menu; } ;
typedef TYPE_2__ sdl_video_t ;
typedef enum scaler_pix_fmt { ____Placeholder_scaler_pix_fmt } scaler_pix_fmt ;
struct TYPE_6__ {int pitch; int h; int w; int pixels; } ;


 int SCALER_FMT_ARGB8888 ;
 int SCALER_FMT_RGBA4444 ;
 int SDL_SRCALPHA ;
 int SDL_SetAlpha (TYPE_3__*,int ,double) ;
 int video_frame_scale (int *,int ,void const*,int,int ,int ,int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void sdl_set_texture_frame(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   enum scaler_pix_fmt format = rgb32
      ? SCALER_FMT_ARGB8888 : SCALER_FMT_RGBA4444;
   sdl_video_t *vid = (sdl_video_t*)data;

   video_frame_scale(
         &vid->menu.scaler,
         vid->menu.frame->pixels,
         frame,
         format,
         vid->menu.frame->w,
         vid->menu.frame->h,
         vid->menu.frame->pitch,
         width,
         height,
         width * (rgb32 ? sizeof(uint32_t) : sizeof(uint16_t))
         );

   SDL_SetAlpha(vid->menu.frame, SDL_SRCALPHA, 255.0 * alpha);
}
