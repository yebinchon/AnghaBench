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
typedef  int UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int ANTIC_margin ; 
 int /*<<< orphan*/ * ANTIC_xe_ptr ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * antic_memory ; 
 int* chars_read ; 
 size_t md ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int screenaddr ; 

__attribute__((used)) static void FUNC4(void)
{
#ifdef PAGED_MEM
	UBYTE *antic_memptr = antic_memory + ANTIC_margin;
	UWORD new_screenaddr = screenaddr + chars_read[md];
	if ((screenaddr ^ new_screenaddr) & 0xf000) {
		do
			*antic_memptr++ = MEMORY_dGetByte(screenaddr++);
		while (screenaddr & 0xfff);
		screenaddr -= 0x1000;
		new_screenaddr -= 0x1000;
	}
	while (screenaddr < new_screenaddr)
		*antic_memptr++ = MEMORY_dGetByte(screenaddr++);
#else
	UWORD new_screenaddr = screenaddr + chars_read[md];
	if ((screenaddr ^ new_screenaddr) & 0xf000) {
		int bytes = (-screenaddr) & 0xfff;
		if (ANTIC_xe_ptr != NULL && screenaddr < 0x8000 && screenaddr >= 0x4000) {
			FUNC3(antic_memory + ANTIC_margin, ANTIC_xe_ptr + (screenaddr - 0x4000), bytes);
			if (new_screenaddr & 0xfff)
				FUNC3(antic_memory + ANTIC_margin + bytes, ANTIC_xe_ptr + (screenaddr + bytes - 0x5000), new_screenaddr & 0xfff);
		}
		else if ((screenaddr & 0xf000) == 0xd000) {
			FUNC0(screenaddr, antic_memory + ANTIC_margin, bytes);
			if (new_screenaddr & 0xfff)
				FUNC0((UWORD) (screenaddr + bytes - 0x1000), antic_memory + ANTIC_margin + bytes, new_screenaddr & 0xfff);
		}
		else {
			FUNC1(screenaddr, antic_memory + ANTIC_margin, bytes);
			if (new_screenaddr & 0xfff)
				FUNC1(screenaddr + bytes - 0x1000, antic_memory + ANTIC_margin + bytes, new_screenaddr & 0xfff);
		}
		screenaddr = new_screenaddr - 0x1000;
	}
	else {
		if (ANTIC_xe_ptr != NULL && screenaddr < 0x8000 && screenaddr >= 0x4000)
			FUNC3(antic_memory + ANTIC_margin, ANTIC_xe_ptr + (screenaddr - 0x4000), chars_read[md]);
		else if ((screenaddr & 0xf000) == 0xd000)
			FUNC0(screenaddr, antic_memory + ANTIC_margin, chars_read[md]);
		else
			FUNC1(screenaddr, antic_memory + ANTIC_margin, chars_read[md]);
		screenaddr = new_screenaddr;
	}
#endif
}