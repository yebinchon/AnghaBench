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
struct _wpad_cb {int /*<<< orphan*/  sound_alarm; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t WPAD_MAX_WIIMOTES ; 
 int /*<<< orphan*/  WPAD_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct _wpad_cb*) ; 
 int /*<<< orphan*/  __wpad_timer ; 
 scalar_t__ __wpads_active ; 
 int /*<<< orphan*/  __wpads_inited ; 
 struct _wpad_cb* __wpdcb ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7()
{
	s32 i;
	u32 level;
	u32 cnt = 0;
	struct _wpad_cb *wpdcb = NULL;

	FUNC2(level);

	__wpads_inited = WPAD_STATE_DISABLED;
	FUNC1(__wpad_timer);
	for(i=0;i<WPAD_MAX_WIIMOTES;i++) {
		wpdcb = &__wpdcb[i];
#ifdef HAVE_WIIUSE_SPEAKER
		SYS_RemoveAlarm(wpdcb->sound_alarm);
#endif
		FUNC5(wpdcb);
	}

	FUNC4(0);
	FUNC3(level);

	while(__wpads_active) {
		FUNC6(50);
		if(++cnt > 3000) break;
	}

	FUNC0();
}