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
typedef  int u32 ;
struct _wpad_cb {int dummy; } ;
typedef  size_t s32 ;

/* Variables and functions */
 size_t WPAD_CHAN_0 ; 
 size_t WPAD_ERR_BAD_CHANNEL ; 
 size_t WPAD_ERR_NONE ; 
 size_t WPAD_ERR_NOT_READY ; 
 size_t WPAD_MAX_WIIMOTES ; 
 scalar_t__ WPAD_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct _wpad_cb*) ; 
 int __wpads_active ; 
 scalar_t__ __wpads_inited ; 
 struct _wpad_cb* __wpdcb ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

s32 FUNC4(s32 chan)
{
	u32 level, cnt = 0;
	struct _wpad_cb *wpdcb = NULL;

	if(chan<WPAD_CHAN_0 || chan>=WPAD_MAX_WIIMOTES) return WPAD_ERR_BAD_CHANNEL;

	FUNC0(level);
	if(__wpads_inited==WPAD_STATE_DISABLED) {
		FUNC1(level);
		return WPAD_ERR_NOT_READY;
	}

	wpdcb = &__wpdcb[chan];
	FUNC2(wpdcb);

	FUNC1(level);

	while(__wpads_active&(0x01<<chan)) {
		FUNC3(50);
		if(++cnt > 3000) break;
	}

	return WPAD_ERR_NONE;
}