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
 int /*<<< orphan*/  ANTIC_CHACTL ; 
 int /*<<< orphan*/  ANTIC_CHBASE ; 
 int /*<<< orphan*/  ANTIC_DMACTL ; 
 int /*<<< orphan*/  ANTIC_HSCROL ; 
 int /*<<< orphan*/  ANTIC_NMIEN ; 
 int /*<<< orphan*/  ANTIC_NMIST ; 
 int /*<<< orphan*/  ANTIC_PMBASE ; 
 int /*<<< orphan*/  ANTIC_VSCROL ; 
 int /*<<< orphan*/  ANTIC_dlist ; 
 int /*<<< orphan*/  ANTIC_xpos ; 
 int /*<<< orphan*/  ANTIC_xpos_limit ; 
 int /*<<< orphan*/  ANTIC_ypos ; 
 int /*<<< orphan*/  IR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  anticmode ; 
 int /*<<< orphan*/  dctr ; 
 int /*<<< orphan*/  lastline ; 
 int /*<<< orphan*/  need_dl ; 
 int /*<<< orphan*/  screenaddr ; 
 int /*<<< orphan*/  vscrol_off ; 

void FUNC3(void)
{
	FUNC1(&ANTIC_DMACTL, 1);
	FUNC1(&ANTIC_CHACTL, 1);
	FUNC1(&ANTIC_HSCROL, 1);
	FUNC1(&ANTIC_VSCROL, 1);
	FUNC1(&ANTIC_PMBASE, 1);
	FUNC1(&ANTIC_CHBASE, 1);
	FUNC1(&ANTIC_NMIEN, 1);
	FUNC1(&ANTIC_NMIST, 1);
	FUNC1(&IR, 1);
	FUNC1(&anticmode, 1);
	FUNC1(&dctr, 1);
	FUNC1(&lastline, 1);
	FUNC1(&need_dl, 1);
	FUNC1(&vscrol_off, 1);

	FUNC2(&ANTIC_dlist, 1);
	FUNC2(&screenaddr, 1);

	FUNC0(&ANTIC_xpos, 1);
	FUNC0(&ANTIC_xpos_limit, 1);
	FUNC0(&ANTIC_ypos, 1);
}