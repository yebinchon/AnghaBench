#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* reg; } ;
struct TYPE_4__ {scalar_t__ dirtyPal; } ;
struct TYPE_6__ {TYPE_2__ video; TYPE_1__ m; } ;

/* Variables and functions */
 scalar_t__ HighCol ; 
 TYPE_3__ Pico ; 
 scalar_t__ VRAM_STUFF ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int dynamic_palette ; 
 int /*<<< orphan*/  localPal ; 

__attribute__((used)) static int FUNC3(unsigned int num)
{
	if (Pico.m.dirtyPal) {
		if (!dynamic_palette) {
			FUNC2(num);
			dynamic_palette = 3; // last for 2 more frames
		}
		FUNC1(1, 1);
	}

	if (dynamic_palette) {
		int line_len = (Pico.video.reg[12]&1) ? 320 : 256;
		void *dst = (char *)VRAM_STUFF + 512*240 + 512*2*num;
		FUNC0(dst, HighCol + 8, localPal, line_len);
	}

	return 0;
}