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
 int /*<<< orphan*/  GU_DIRECT ; 
 int /*<<< orphan*/  GU_PSM_5650 ; 
 int /*<<< orphan*/  bg_buffer ; 
 int /*<<< orphan*/  guCmdList ; 
 int /*<<< orphan*/  menu_screen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	// short *src = (short *)bg_buffer, *dst = (short *)menu_screen;
	// int i;

	// for (i = 272; i >= 0; i--, dst += 512, src += 480)
	//	memcpy32((int *)dst, (int *)src, 480*2/4);

	FUNC3(0,0); // sync with prev
	FUNC2(GU_DIRECT, guCmdList);
	FUNC0(GU_PSM_5650, 0, 0, 480, 272, 480, bg_buffer, 0, 0, 512, menu_screen);
	FUNC1();
	FUNC3(0,0);
}