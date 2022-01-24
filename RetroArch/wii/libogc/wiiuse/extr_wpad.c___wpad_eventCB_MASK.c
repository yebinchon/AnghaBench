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
struct wiimote_t {int unid; } ;
struct _wpad_cb {int queue_length; size_t queue_tail; int queue_full; int queue_head; int idle_time; int /*<<< orphan*/ * queue_int; int /*<<< orphan*/  lstate; int /*<<< orphan*/ * queue_ext; struct wiimote_t* wm; int /*<<< orphan*/  speaker_enabled; int /*<<< orphan*/  thresh; int /*<<< orphan*/  dropped_events; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  WPADData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int EVENTQUEUE_LENGTH ; 
 int WIIMOTE_LED_1 ; 
#define  WIIUSE_CONNECT 131 
#define  WIIUSE_DISCONNECT 130 
#define  WIIUSE_EVENT 129 
#define  WIIUSE_STATUS 128 
 int WPAD_BALANCE_BOARD ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int __wpads_active ; 
 int __wpads_used ; 
 struct _wpad_cb* __wpdcb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_t*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_t*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wpaddata ; 

__attribute__((used)) static void FUNC9(struct wiimote_t *wm,s32 event)
{
	s32 chan;
	u32 maxbufs;
	WPADData *wpadd = NULL;
	struct _wpad_cb *wpdcb = NULL;

	switch(event) {
		case WIIUSE_EVENT:
			chan = wm->unid;
			wpdcb = &__wpdcb[chan];

#ifdef HAVE_WIIUSE_QUEUE_EXT
			if(wpdcb->queue_ext!=NULL) {
				maxbufs = wpdcb->queue_length;
				wpadd = &(wpdcb->queue_ext[wpdcb->queue_tail]);
			}
         else
#endif
         {
				maxbufs = EVENTQUEUE_LENGTH;
				wpadd = &(wpdcb->queue_int[wpdcb->queue_tail]);
			}
			if(wpdcb->queue_full == maxbufs) {
				wpdcb->queue_head++;
				wpdcb->queue_head %= maxbufs;
				wpdcb->dropped_events++;
			} else {
				wpdcb->queue_full++;
			}

			FUNC2(wm, wpadd, &wpdcb->idle_time, &wpdcb->thresh);

			wpdcb->queue_tail++;
			wpdcb->queue_tail %= maxbufs;

			break;
		case WIIUSE_STATUS:
			break;
		case WIIUSE_CONNECT:
			chan = wm->unid;
			wpdcb = &__wpdcb[chan];
			wpdcb->wm = wm;
			wpdcb->queue_head = 0;
			wpdcb->queue_tail = 0;
			wpdcb->queue_full = 0;
			wpdcb->idle_time = 0;
			FUNC4(&wpdcb->lstate,0,sizeof(WPADData));
			FUNC4(&wpaddata[chan],0,sizeof(WPADData));
			FUNC4(wpdcb->queue_int,0,(sizeof(WPADData)*EVENTQUEUE_LENGTH));
			FUNC5(wm,(FUNC1()^1));
			FUNC6(wm,FUNC0());
			FUNC7(wm,(WIIMOTE_LED_1<<(chan%WPAD_BALANCE_BOARD)),NULL);
#ifdef HAVE_WIIUSE_SPEAKER
			wiiuse_set_speaker(wm,wpdcb->speaker_enabled);
#endif
			FUNC3(chan);
			__wpads_active |= (0x01<<chan);
			break;
		case WIIUSE_DISCONNECT:
			chan = wm->unid;
			wpdcb = &__wpdcb[chan];
			wpdcb->wm = wm;
			wpdcb->queue_head = 0;
			wpdcb->queue_tail = 0;
			wpdcb->queue_full = 0;
			wpdcb->queue_length = 0;
#ifdef HAVE_WIIUSE_QUEUE_EXT
			wpdcb->queue_ext = NULL;
#endif
			wpdcb->idle_time = -1;
			FUNC4(&wpdcb->lstate,0,sizeof(WPADData));
			FUNC4(&wpaddata[chan],0,sizeof(WPADData));
			FUNC4(wpdcb->queue_int,0,(sizeof(WPADData)*EVENTQUEUE_LENGTH));
			__wpads_active &= ~(0x01<<chan);
			__wpads_used &= ~(0x01<<chan);
			break;
		default:
			break;
	}
}