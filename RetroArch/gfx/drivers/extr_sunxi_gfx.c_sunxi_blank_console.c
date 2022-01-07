
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_video {int screensize; char* screen_bck; TYPE_1__* sunxi_disp; } ;
struct TYPE_2__ {int xres; int yres; int bits_per_pixel; scalar_t__ framebuffer_addr; } ;


 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int) ;
 int system (char*) ;

__attribute__((used)) static void sunxi_blank_console(struct sunxi_video *_dispvars)
{
   if (!_dispvars)
      return;


   system("setterm -cursor off");


   _dispvars->screensize = _dispvars->sunxi_disp->xres * _dispvars->sunxi_disp->yres * _dispvars->sunxi_disp->bits_per_pixel / 8;


   _dispvars->screen_bck = (char*)malloc(_dispvars->screensize * sizeof(char));

   if (!_dispvars->screen_bck)
      return;

   memcpy((char*)_dispvars->screen_bck, (char*)_dispvars->sunxi_disp->framebuffer_addr, _dispvars->screensize);


   memset((char*)(_dispvars->sunxi_disp->framebuffer_addr), 0x00, _dispvars->screensize);
}
