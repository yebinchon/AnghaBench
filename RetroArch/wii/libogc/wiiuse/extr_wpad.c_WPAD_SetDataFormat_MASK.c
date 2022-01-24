#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int s32 ;
struct TYPE_2__ {int data_fmt; } ;

/* Variables and functions */
 int WPAD_CHAN_0 ; 
 int WPAD_CHAN_ALL ; 
 int WPAD_ERR_BADVALUE ; 
 int WPAD_ERR_BAD_CHANNEL ; 
 int WPAD_ERR_NONE ; 
 int WPAD_ERR_NOT_READY ; 
#define  WPAD_FMT_BTNS 130 
#define  WPAD_FMT_BTNS_ACC 129 
#define  WPAD_FMT_BTNS_ACC_IR 128 
 int WPAD_MAX_WIIMOTES ; 
 scalar_t__ WPAD_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ ** __wpads ; 
 scalar_t__ __wpads_inited ; 
 TYPE_1__* __wpdcb ; 

s32 FUNC3(s32 chan, s32 fmt)
{
	u32 level;
	s32 ret;
	int i;

	if(chan == WPAD_CHAN_ALL) {
		for(i=WPAD_CHAN_0; i<WPAD_MAX_WIIMOTES; i++)
			if((ret = FUNC3(i, fmt)) < WPAD_ERR_NONE)
				return ret;
		return WPAD_ERR_NONE;
	}

	if(chan<WPAD_CHAN_0 || chan>=WPAD_MAX_WIIMOTES) return WPAD_ERR_BAD_CHANNEL;

	FUNC0(level);
	if(__wpads_inited==WPAD_STATE_DISABLED) {
		FUNC1(level);
		return WPAD_ERR_NOT_READY;
	}

	if(__wpads[chan]!=NULL) {
		switch(fmt) {
			case WPAD_FMT_BTNS:
			case WPAD_FMT_BTNS_ACC:
			case WPAD_FMT_BTNS_ACC_IR:
				__wpdcb[chan].data_fmt = fmt;
				FUNC2(chan);
				break;
			default:
				FUNC1(level);
				return WPAD_ERR_BADVALUE;
		}
	}
	FUNC1(level);
	return WPAD_ERR_NONE;
}