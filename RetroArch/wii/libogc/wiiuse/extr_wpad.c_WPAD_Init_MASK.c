#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct linkkey_info {int dummy; } ;
struct _wpad_cb {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  conf_pads ;
struct TYPE_7__ {int /*<<< orphan*/  mp; int /*<<< orphan*/  js; int /*<<< orphan*/  acc; int /*<<< orphan*/  ir; int /*<<< orphan*/  btns; } ;
struct TYPE_8__ {scalar_t__ num_registered; int /*<<< orphan*/  sound_alarm; TYPE_1__ thresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ CONF_PAD_MAX_REGISTERED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct timespec*,struct timespec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WPAD_ERR_BADCONF ; 
 int /*<<< orphan*/  WPAD_ERR_NONE ; 
 int /*<<< orphan*/  WPAD_ERR_NONEREGISTERED ; 
 int /*<<< orphan*/  WPAD_ERR_UNKNOWN ; 
 int WPAD_MAX_WIIMOTES ; 
 scalar_t__ WPAD_STATE_DISABLED ; 
 scalar_t__ WPAD_STATE_ENABLING ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  WPAD_THRESH_DEFAULT_ACCEL ; 
 int /*<<< orphan*/  WPAD_THRESH_DEFAULT_BUTTONS ; 
 int /*<<< orphan*/  WPAD_THRESH_DEFAULT_IR ; 
 int /*<<< orphan*/  WPAD_THRESH_DEFAULT_JOYSTICK ; 
 int /*<<< orphan*/  WPAD_THRESH_DEFAULT_MOTION_PLUS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __initcore_finished ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_2__ __wpad_devs ; 
 int /*<<< orphan*/  __wpad_disconnectCB ; 
 int /*<<< orphan*/  __wpad_eventCB ; 
 TYPE_2__* __wpad_keys ; 
 int /*<<< orphan*/  __wpad_resetinfo ; 
 int /*<<< orphan*/  __wpad_timeouthandler ; 
 int /*<<< orphan*/  __wpad_timer ; 
 int /*<<< orphan*/ * __wpads ; 
 scalar_t__ __wpads_active ; 
 scalar_t__ __wpads_inited ; 
 scalar_t__ __wpads_ponded ; 
 TYPE_2__* __wpdcb ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (int,int /*<<< orphan*/ ) ; 

s32 FUNC13()
{
	u32 level;
	struct timespec tb;
	int i;

	FUNC8(level);
	if(__wpads_inited==WPAD_STATE_DISABLED) {
		__wpads_ponded = 0;
		__wpads_active = 0;

		FUNC11(__wpdcb,0,sizeof(struct _wpad_cb)*WPAD_MAX_WIIMOTES);
		FUNC11(&__wpad_devs,0,sizeof(conf_pads));
		FUNC11(__wpad_keys,0,sizeof(struct linkkey_info)*WPAD_MAX_WIIMOTES);

		for(i=0;i<WPAD_MAX_WIIMOTES;i++) {
			__wpdcb[i].thresh.btns = WPAD_THRESH_DEFAULT_BUTTONS;
			__wpdcb[i].thresh.ir = WPAD_THRESH_DEFAULT_IR;
			__wpdcb[i].thresh.acc = WPAD_THRESH_DEFAULT_ACCEL;
			__wpdcb[i].thresh.js = WPAD_THRESH_DEFAULT_JOYSTICK;
			__wpdcb[i].thresh.mp = WPAD_THRESH_DEFAULT_MOTION_PLUS;

#ifdef HAVE_WIIUSE_SPEAKER
			if (SYS_CreateAlarm(&__wpdcb[i].sound_alarm) < 0)
			{
				WPAD_Shutdown();
				_CPU_ISR_Restore(level);
				return WPAD_ERR_UNKNOWN;
			}
#endif
		}

		if(FUNC3(&__wpad_devs) < 0) {
			FUNC7();
			FUNC9(level);
			return WPAD_ERR_BADCONF;
		}

		if(__wpad_devs.num_registered == 0) {
			FUNC7();
			FUNC9(level);
			return WPAD_ERR_NONEREGISTERED;
		}

		if(__wpad_devs.num_registered > CONF_PAD_MAX_REGISTERED) {
			FUNC7();
			FUNC9(level);
			return WPAD_ERR_BADCONF;
		}

		__wpads = FUNC12(WPAD_MAX_WIIMOTES,__wpad_eventCB);
		if(__wpads==NULL) {
			FUNC7();
			FUNC9(level);
			return WPAD_ERR_UNKNOWN;
		}

		FUNC10(1);

		FUNC0();
		FUNC2(__wpad_disconnectCB);
		FUNC1(__initcore_finished);

		if (FUNC4(&__wpad_timer) < 0)
		{
			FUNC7();
			FUNC9(level);
			return WPAD_ERR_UNKNOWN;
		}

		FUNC5(&__wpad_resetinfo);

		tb.tv_sec = 1;
		tb.tv_nsec = 0;
		FUNC6(__wpad_timer,&tb,&tb,__wpad_timeouthandler,NULL);
		__wpads_inited = WPAD_STATE_ENABLING;
	}
	FUNC9(level);
	return WPAD_ERR_NONE;
}