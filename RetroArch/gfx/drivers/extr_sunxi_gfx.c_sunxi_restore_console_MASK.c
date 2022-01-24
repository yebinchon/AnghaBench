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
struct sunxi_video {scalar_t__ screen_bck; int /*<<< orphan*/  screensize; TYPE_1__* sunxi_disp; } ;
struct TYPE_2__ {scalar_t__ framebuffer_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct sunxi_video *_dispvars)
{
   if (!_dispvars)
      return;

   FUNC2("setterm -cursor on");

   FUNC1((char*)_dispvars->sunxi_disp->framebuffer_addr, (char*)_dispvars->screen_bck, _dispvars->screensize);

   FUNC0(_dispvars->screen_bck);
}