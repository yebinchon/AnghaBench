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
 int PAHW_PICO ; 
 int PicoAHW ; 
 unsigned char* PicoDraw2FB ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 

void FUNC3(void)
{
	if (PicoOpt&0x10)
	{
		int i;
		unsigned char *pd;
		// clear top and bottom trash
		for (pd = PicoDraw2FB+8, i = 8; i > 0; i--, pd += 512)
			FUNC2((int *)pd, 0xe0e0e0e0, 320/4);
		for (pd = PicoDraw2FB+512*232+8, i = 8; i > 0; i--, pd += 512)
			FUNC2((int *)pd, 0xe0e0e0e0, 320/4);
	}

	if (PicoAHW & PAHW_PICO)
		FUNC1();

	FUNC0();
}