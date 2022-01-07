
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_video {scalar_t__ screen_bck; int screensize; TYPE_1__* sunxi_disp; } ;
struct TYPE_2__ {scalar_t__ framebuffer_addr; } ;


 int free (scalar_t__) ;
 int memcpy (char*,char*,int ) ;
 int system (char*) ;

__attribute__((used)) static void sunxi_restore_console(struct sunxi_video *_dispvars)
{
   if (!_dispvars)
      return;

   system("setterm -cursor on");

   memcpy((char*)_dispvars->sunxi_disp->framebuffer_addr, (char*)_dispvars->screen_bck, _dispvars->screensize);

   free(_dispvars->screen_bck);
}
