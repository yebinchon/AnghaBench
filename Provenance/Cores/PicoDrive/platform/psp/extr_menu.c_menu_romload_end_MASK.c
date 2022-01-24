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
 int /*<<< orphan*/ * PicoCDLoadProgressCB ; 
 int /*<<< orphan*/  PicoCartLoadProgressCB ; 
 int lcdr_line ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,int) ; 

void FUNC1(void)
{
	PicoCartLoadProgressCB = *(PicoCDLoadProgressCB = NULL);
	FUNC0(1, ++lcdr_line*10, "Starting emulation...", 0xffff);
}