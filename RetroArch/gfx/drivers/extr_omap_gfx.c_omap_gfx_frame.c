
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int uint64_t ;
struct TYPE_5__ {unsigned int out_height; unsigned int out_stride; } ;
struct TYPE_6__ {void const* frame; TYPE_1__ scaler; scalar_t__ active; } ;
struct TYPE_7__ {unsigned int width; unsigned int height; TYPE_2__ menu; int omap; } ;
typedef TYPE_3__ omap_video_t ;


 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*) ;
 int menu_driver_frame (int *) ;
 int omap_render_msg (TYPE_3__*,char const*) ;
 int omapfb_blit_frame (int ,void const*,unsigned int,unsigned int) ;
 int omapfb_prepare (int ) ;
 scalar_t__ omapfb_set_mode (int ,unsigned int,unsigned int) ;

__attribute__((used)) static bool omap_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count, unsigned pitch, const char *msg,
      video_frame_info_t *video_info)
{
   omap_video_t *vid = (omap_video_t*)data;

   if (!frame)
      return 1;

   if (width > 4 && height > 4 && (width != vid->width || height != vid->height))
   {
      RARCH_LOG("[video_omap]: mode set (resolution changed by core)\n");

      if (omapfb_set_mode(vid->omap, width, height) != 0)
      {
         RARCH_ERR("[video_omap]: mode set failed\n");
         return 0;
      }

      vid->width = width;
      vid->height = height;
   }

   omapfb_prepare(vid->omap);
   omapfb_blit_frame(vid->omap, frame, vid->height, pitch);





   if (vid->menu.active)
      omapfb_blit_frame(vid->omap, vid->menu.frame,
            vid->menu.scaler.out_height,
            vid->menu.scaler.out_stride);

   if (msg)
      omap_render_msg(vid, msg);

   return 1;
}
