#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct accel_t {int dummy; } ;
struct _wpad_cb {size_t queue_length; scalar_t__ queue_full; size_t queue_head; int /*<<< orphan*/  lstate; int /*<<< orphan*/ * queue_int; int /*<<< orphan*/ * queue_ext; } ;
typedef  size_t s32 ;
typedef  int /*<<< orphan*/  WPADData ;
struct TYPE_4__ {struct accel_t accel_calib; } ;

/* Variables and functions */
 size_t EVENTQUEUE_LENGTH ; 
 size_t FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_CONNECTED ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE_COMPLETE ; 
 int /*<<< orphan*/  WIIUSE_SMOOTHING ; 
 size_t WPAD_ERR_NOT_READY ; 
 size_t WPAD_ERR_NO_CONTROLLER ; 
 size_t WPAD_ERR_QUEUE_EMPTY ; 
 scalar_t__ WPAD_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct accel_t*,size_t) ; 
 TYPE_1__** __wpads ; 
 scalar_t__ __wpads_inited ; 
 struct _wpad_cb* __wpdcb ; 

s32 FUNC5(s32 chan, WPADData *data)
{
	u32 level;
	u32 maxbufs,smoothed = 0;
	struct accel_t *accel_calib = NULL;
	struct _wpad_cb *wpdcb = NULL;
	WPADData *lstate = NULL,*wpadd = NULL;

	//if(chan<WPAD_CHAN_0 || chan>=WPAD_MAX_WIIMOTES) return WPAD_ERR_BAD_CHANNEL;

	FUNC2(level);
	if(__wpads_inited==WPAD_STATE_DISABLED) {
		FUNC3(level);
		return WPAD_ERR_NOT_READY;
	}

	if(__wpads[chan] && FUNC1(__wpads[chan],WIIMOTE_STATE_CONNECTED)) {
		if(FUNC1(__wpads[chan],WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
			wpdcb = &__wpdcb[chan];
#ifdef HAVE_WIIUSE_QUEUE_EXT
			if(wpdcb->queue_ext!=NULL) {
				maxbufs = wpdcb->queue_length;
				wpadd = wpdcb->queue_ext;
			}
         else
#endif
         {
				maxbufs = EVENTQUEUE_LENGTH;
				wpadd = wpdcb->queue_int;
			}
			if(wpdcb->queue_full == 0) {
				FUNC3(level);
				return WPAD_ERR_QUEUE_EMPTY;
			}
			if(data)
				*data = wpadd[wpdcb->queue_head];
			wpdcb->queue_head++;
			wpdcb->queue_head %= maxbufs;
			wpdcb->queue_full--;
			lstate = &wpdcb->lstate;
			accel_calib = &__wpads[chan]->accel_calib;
			smoothed = FUNC0(__wpads[chan], WIIUSE_SMOOTHING);
		} else {
			FUNC3(level);
			return WPAD_ERR_NOT_READY;
		}
	} else {
		FUNC3(level);
		return WPAD_ERR_NO_CONTROLLER;
	}

	FUNC3(level);
	if(data)
		FUNC4(data,lstate,accel_calib,smoothed);
	return 0;
}