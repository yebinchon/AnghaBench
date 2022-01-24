#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ubyte ;
struct TYPE_3__ {int x; int y; int z; } ;
struct wiimote_t {int* event_buf; int /*<<< orphan*/  event; int /*<<< orphan*/  gforce; TYPE_1__ accel; int /*<<< orphan*/  accel_calib; int /*<<< orphan*/  orient; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIUSE_EVENT ; 
 int /*<<< orphan*/  WIIUSE_SMOOTHING ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  WM_RPT_ACK 137 
#define  WM_RPT_BTN 136 
#define  WM_RPT_BTN_ACC 135 
#define  WM_RPT_BTN_ACC_EXP 134 
#define  WM_RPT_BTN_ACC_IR 133 
#define  WM_RPT_BTN_ACC_IR_EXP 132 
#define  WM_RPT_BTN_EXP 131 
#define  WM_RPT_BTN_IR_EXP 130 
#define  WM_RPT_CTRL_STATUS 129 
#define  WM_RPT_READ 128 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct wiimote_t*,int*) ; 

void FUNC11(struct wiimote_t *wm)
{
	ubyte event;
	ubyte *msg;

	event = wm->event_buf[0];
	msg = wm->event_buf+1;
	//printf("parse_event(%02x,%p)\n",event,msg);
	switch(event) {
		case WM_RPT_CTRL_STATUS:
			FUNC8(wm,msg);
			return;
		case WM_RPT_READ:
			FUNC7(wm,msg);
			return;
		case WM_RPT_ACK:
			FUNC6(wm,msg);
			return;
		case WM_RPT_BTN:
			FUNC10(wm,msg);
			break;
		case WM_RPT_BTN_ACC:
			FUNC10(wm,msg);

			wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
			wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
			wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);
#ifndef GEKKO
			/* calculate the remote orientation */
			FUNC5(&wm->accel_calib, &wm->accel, &wm->orient, FUNC0(wm, WIIUSE_SMOOTHING));

			/* calculate the gforces on each axis */
			FUNC4(&wm->accel_calib, &wm->accel, &wm->gforce);
#endif
			break;
		case WM_RPT_BTN_ACC_IR:
			FUNC10(wm,msg);

			wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
			wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
			wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);
#ifndef GEKKO
			/* calculate the remote orientation */
			FUNC5(&wm->accel_calib, &wm->accel, &wm->orient, FUNC0(wm, WIIUSE_SMOOTHING));

			/* calculate the gforces on each axis */
			FUNC4(&wm->accel_calib, &wm->accel, &wm->gforce);
#endif
			FUNC3(wm, msg+5);
			break;
		case WM_RPT_BTN_EXP:
			FUNC10(wm,msg);
			FUNC9(wm,msg+2);
			break;
		case WM_RPT_BTN_ACC_EXP:
			/* button - motion - expansion */
			FUNC10(wm, msg);

			wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
			wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
			wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);
#ifndef GEKKO
			FUNC5(&wm->accel_calib, &wm->accel, &wm->orient, FUNC0(wm, WIIUSE_SMOOTHING));
			FUNC4(&wm->accel_calib, &wm->accel, &wm->gforce);
#endif
			FUNC9(wm, msg+5);
			break;
		case WM_RPT_BTN_IR_EXP:
			FUNC10(wm,msg);
			FUNC2(wm, msg+2);
			FUNC9(wm,msg+12);
			break;
		case WM_RPT_BTN_ACC_IR_EXP:
			/* button - motion - ir - expansion */
			FUNC10(wm, msg);

			wm->accel.x = (msg[2]<<2)|((msg[0]>>5)&3);
			wm->accel.y = (msg[3]<<2)|((msg[1]>>4)&2);
			wm->accel.z = (msg[4]<<2)|((msg[1]>>5)&2);
#ifndef GEKKO
			FUNC5(&wm->accel_calib, &wm->accel, &wm->orient, FUNC0(wm, WIIUSE_SMOOTHING));
			FUNC4(&wm->accel_calib, &wm->accel, &wm->gforce);
#endif
			/* ir */
			FUNC2(wm, msg+5);

			FUNC9(wm, msg+15);
			break;
		default:
			FUNC1("Unknown event, can not handle it [Code 0x%x].", event);
			return;
	}

	/* was there an event? */
	wm->event = WIIUSE_EVENT;
}