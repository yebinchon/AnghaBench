#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;

/* Variables and functions */
 scalar_t__ HighPal ; 
 int PDRAW_SONIC_MODE ; 
 int POPT_ALT_RENDERER ; 
 TYPE_2__ Pico ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int rendstatus ; 

void FUNC2(void)
{
  int sh = (Pico.video.reg[0xC] & 8) >> 3; // shadow/hilight?
  if (PicoOpt & POPT_ALT_RENDERER)
    sh = 0; // no s/h support

  FUNC0(sh);
  if (rendstatus & PDRAW_SONIC_MODE) {
    // FIXME?
    FUNC1(HighPal + 0x40, HighPal, 0x40*2);
    FUNC1(HighPal + 0x80, HighPal, 0x40*2);
  }
}