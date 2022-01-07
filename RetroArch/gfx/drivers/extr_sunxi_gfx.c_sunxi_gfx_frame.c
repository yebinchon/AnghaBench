
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int uint64_t ;
struct sunxi_video {unsigned int src_width; unsigned int src_height; TYPE_1__* sunxi_disp; scalar_t__ menu_active; } ;
struct TYPE_2__ {int fd_fb; } ;


 int FBIO_WAITFORVSYNC ;
 int RARCH_LOG (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int ioctl (int ,int ,int ) ;
 int menu_driver_frame (int *) ;
 int sunxi_setup_scale (struct sunxi_video*,unsigned int,unsigned int,unsigned int) ;
 int sunxi_update_main (void const*,struct sunxi_video*) ;

__attribute__((used)) static bool sunxi_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count, unsigned pitch, const char *msg,
      video_frame_info_t *video_info)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   if (_dispvars->src_width != width || _dispvars->src_height != height)
   {

      if (width == 0 || height == 0)
         return 1;

      RARCH_LOG("video_sunxi: internal resolution changed by core: %ux%u -> %ux%u\n",
            _dispvars->src_width, _dispvars->src_height, width, height);

      sunxi_setup_scale(_dispvars, width, height, pitch);
   }





   if (_dispvars->menu_active)
   {
      ioctl(_dispvars->sunxi_disp->fd_fb, FBIO_WAITFORVSYNC, 0);
      return 1;
   }

   sunxi_update_main(frame, _dispvars);

   return 1;
}
