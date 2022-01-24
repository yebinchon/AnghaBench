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
 int* ANTIC_cpu2antic_ptr ; 
 int ANTIC_cur_screen_pos ; 
 size_t ANTIC_xpos ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void FUNC1(void)
{
	int actual_xpos = ANTIC_cpu2antic_ptr[ANTIC_xpos];
	int newpos = actual_xpos * 2 - 37;
	FUNC0(ANTIC_cur_screen_pos, newpos);
	ANTIC_cur_screen_pos = newpos;
}