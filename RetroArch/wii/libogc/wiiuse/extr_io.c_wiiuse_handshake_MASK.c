#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uword ;
typedef  int ubyte ;
struct TYPE_4__ {int x; int y; int z; } ;
struct TYPE_3__ {int x; int y; int z; } ;
struct accel_t {TYPE_2__ cal_zero; TYPE_1__ cal_g; } ;
struct wiimote_t {int handshake_state; int /*<<< orphan*/  event; struct accel_t accel_calib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXP_ID_CODE_CLASSIC_WIIU_PRO ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_LED_NONE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE_COMPLETE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_WIIU_PRO ; 
 int /*<<< orphan*/  WIIUSE_CONNECT ; 
 int WM_CTRL_STATUS_BYTE1_ATTACHMENT ; 
 int /*<<< orphan*/  WM_EXP_ID ; 
 int /*<<< orphan*/  WM_MEM_OFFSET_CALIBRATION ; 
 int* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*,int*,int /*<<< orphan*/ ,int,void (*) (struct wiimote_t*,int*,int)) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_t*,void (*) (struct wiimote_t*,int*,int)) ; 

void FUNC9(struct wiimote_t *wm,ubyte *data,uword len)
{
	ubyte *buf = NULL;
	struct accel_t *accel = &wm->accel_calib;

	//printf("wiiuse_handshake(%d,%p,%d)\n",wm->handshake_state,data,len);

	switch(wm->handshake_state) {
		case 0:
			wm->handshake_state++;

			FUNC7(wm,WIIMOTE_LED_NONE,NULL);
			FUNC8(wm,wiiuse_handshake);
			return;

		case 1:
			wm->handshake_state++;
			buf = FUNC3(sizeof(ubyte)*8);

			if (len > 2 && data[2]&WM_CTRL_STATUS_BYTE1_ATTACHMENT) {
				FUNC6(wm,buf,WM_EXP_ID,6,wiiuse_handshake);
				return;

		case 2:
				if (FUNC0(*(int*)(&data[2])) == EXP_ID_CODE_CLASSIC_WIIU_PRO) {
					FUNC5(data, 0, 8);
					FUNC2(wm, WIIMOTE_STATE_WIIU_PRO);
					break;
				}
				buf = data;
			}

			wm->handshake_state++;
			FUNC6(wm,buf,WM_MEM_OFFSET_CALIBRATION,7,wiiuse_handshake);
			return;
	}

	accel->cal_zero.x = ((data[0]<<2)|((data[3]>>4)&3));
	accel->cal_zero.y = ((data[1]<<2)|((data[3]>>2)&3));
	accel->cal_zero.z = ((data[2]<<2)|(data[3]&3));

	accel->cal_g.x = (((data[4]<<2)|((data[7]>>4)&3)) - accel->cal_zero.x);
	accel->cal_g.y = (((data[5]<<2)|((data[7]>>2)&3)) - accel->cal_zero.y);
	accel->cal_g.z = (((data[6]<<2)|(data[7]&3)) - accel->cal_zero.z);
	FUNC4(data);

	FUNC1(wm, WIIMOTE_STATE_HANDSHAKE);
	FUNC2(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);

	wm->event = WIIUSE_CONNECT;
	FUNC8(wm,NULL);
}