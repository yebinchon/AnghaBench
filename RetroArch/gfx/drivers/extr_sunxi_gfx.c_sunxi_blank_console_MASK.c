#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sunxi_video {int screensize; char* screen_bck; TYPE_1__* sunxi_disp; } ;
struct TYPE_2__ {int xres; int yres; int bits_per_pixel; scalar_t__ framebuffer_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct sunxi_video *_dispvars)
{
   if (!_dispvars)
      return;

   /* Disable cursor blinking so it's not visible. */
   FUNC3("setterm -cursor off");

   /* Figure out the size of the screen in bytes. */
   _dispvars->screensize = _dispvars->sunxi_disp->xres * _dispvars->sunxi_disp->yres * _dispvars->sunxi_disp->bits_per_pixel / 8;

   /* Backup screen contents. */
   _dispvars->screen_bck = (char*)FUNC0(_dispvars->screensize * sizeof(char));

   if (!_dispvars->screen_bck)
      return;

   FUNC1((char*)_dispvars->screen_bck, (char*)_dispvars->sunxi_disp->framebuffer_addr, _dispvars->screensize);

   /* Blank screen. */
   FUNC2((char*)(_dispvars->sunxi_disp->framebuffer_addr), 0x00, _dispvars->screensize);
}