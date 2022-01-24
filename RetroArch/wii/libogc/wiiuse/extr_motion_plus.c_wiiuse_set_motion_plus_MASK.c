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
typedef  int ubyte ;
struct wiimote_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_HANDSHAKE ; 
 int /*<<< orphan*/  WM_EXP_MEM_ENABLE1 ; 
 int /*<<< orphan*/  WM_EXP_MOTION_PLUS_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*) ; 
 int /*<<< orphan*/  wiiuse_motion_plus_check ; 
 int /*<<< orphan*/  wiiuse_set_motion_plus_clear1 ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_t*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct wiimote_t *wm, int status)
{
	ubyte val;

	if(FUNC1(wm,WIIMOTE_STATE_EXP_HANDSHAKE))
		return;

	FUNC0(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
	if(status)
	{
		val = 0x04;
		FUNC3(wm,WM_EXP_MOTION_PLUS_ENABLE,&val,1,wiiuse_motion_plus_check);
	}
	else
	{
		FUNC2(wm);
		val = 0x55;
		FUNC3(wm,WM_EXP_MEM_ENABLE1,&val,1,wiiuse_set_motion_plus_clear1);
	}
}