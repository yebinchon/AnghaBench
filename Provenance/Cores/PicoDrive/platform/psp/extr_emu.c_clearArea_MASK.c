#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int* VRAM_CACHED_STUFF ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int* psp_screen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 () ; 

__attribute__((used)) static void FUNC4(int full)
{
	if (full) {
		FUNC1(psp_screen, 0, 512*272*2/4);
		FUNC2(0);
		FUNC1(psp_screen, 0, 512*272*2/4);
		FUNC0(VRAM_CACHED_STUFF, 0xe0e0e0e0, 512*240/4);
		FUNC0((int *)VRAM_CACHED_STUFF+512*240/4, 0, 512*240*2/4);
	} else {
		void *fb = FUNC3();
		FUNC1((int *)((char *)psp_screen + 512*264*2), 0, 512*8*2/4);
		FUNC1((int *)((char *)fb         + 512*264*2), 0, 512*8*2/4);
	}
}