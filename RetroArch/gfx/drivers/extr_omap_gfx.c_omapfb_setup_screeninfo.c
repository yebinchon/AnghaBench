
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int xres; int yres; int xres_virtual; int yres_virtual; int bits_per_pixel; scalar_t__ nonstd; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct TYPE_5__ {TYPE_4__ si; } ;
typedef TYPE_1__ omapfb_state_t ;
struct TYPE_6__ {int num_pages; int bpp; int fb_framesize; int fd; TYPE_1__* current_state; } ;
typedef TYPE_2__ omapfb_data_t ;


 int FBIOPUT_VSCREENINFO ;
 int RARCH_ERR (char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_4__*) ;

__attribute__((used)) static int omapfb_setup_screeninfo(omapfb_data_t *pdata, int width, int height)
{
   omapfb_state_t* state = pdata->current_state;

   state->si.xres = width;
   state->si.yres = height;
   state->si.xres_virtual = width;
   state->si.yres_virtual = height * pdata->num_pages;
   state->si.xoffset = 0;
   state->si.yoffset = 0;
   state->si.bits_per_pixel = pdata->bpp * 8;


   state->si.nonstd = 0;

   if (ioctl(pdata->fd, FBIOPUT_VSCREENINFO, &state->si) != 0)
   {
      RARCH_ERR("[video_omap]: setup screeninfo failed\n");
      return -1;
   }

   pdata->fb_framesize = width * height * pdata->bpp;

   return 0;
}
