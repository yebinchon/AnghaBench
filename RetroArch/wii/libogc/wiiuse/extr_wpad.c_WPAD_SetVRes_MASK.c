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
typedef  int /*<<< orphan*/  u32 ;
typedef  int s32 ;

/* Variables and functions */
 int WPAD_CHAN_0 ; 
 int WPAD_CHAN_ALL ; 
 int WPAD_ERR_BAD_CHANNEL ; 
 int WPAD_ERR_NONE ; 
 int WPAD_ERR_NOT_READY ; 
 int WPAD_MAX_WIIMOTES ; 
 scalar_t__ WPAD_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** __wpads ; 
 scalar_t__ __wpads_inited ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC3(s32 chan,u32 xres,u32 yres)
{
	u32 level;
	s32 ret;
	int i;

	if(chan == WPAD_CHAN_ALL) {
		for(i=WPAD_CHAN_0; i<WPAD_MAX_WIIMOTES; i++)
			if((ret = FUNC3(i, xres, yres)) < WPAD_ERR_NONE)
				return ret;
		return WPAD_ERR_NONE;
	}

	if(chan<WPAD_CHAN_0 || chan>=WPAD_MAX_WIIMOTES) return WPAD_ERR_BAD_CHANNEL;

	FUNC0(level);
	if(__wpads_inited==WPAD_STATE_DISABLED) {
		FUNC1(level);
		return WPAD_ERR_NOT_READY;
	}

	if(__wpads[chan]!=NULL)
		FUNC2(__wpads[chan],xres,yres);

	FUNC1(level);
	return WPAD_ERR_NONE;
}