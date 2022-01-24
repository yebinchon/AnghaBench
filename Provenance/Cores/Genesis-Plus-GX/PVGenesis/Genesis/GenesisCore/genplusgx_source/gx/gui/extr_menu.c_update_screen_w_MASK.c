#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int screen_w; } ;
struct TYPE_4__ {int viWidth; int viXOrigin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int VI_MAX_WIDTH_NTSC ; 
 TYPE_2__ config ; 
 TYPE_1__* vmode ; 

__attribute__((used)) static void FUNC2(void)
{
  vmode->viWidth    = config.screen_w;
  vmode->viXOrigin  = (VI_MAX_WIDTH_NTSC -config.screen_w)/2;
  FUNC0(vmode);
  FUNC1();
}