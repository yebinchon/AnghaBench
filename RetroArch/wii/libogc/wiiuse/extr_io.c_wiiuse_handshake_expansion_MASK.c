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
typedef  int /*<<< orphan*/  uword ;
typedef  int ubyte ;
struct TYPE_2__ {int /*<<< orphan*/  classic; int /*<<< orphan*/  nunchuk; } ;
struct wiimote_t {int expansion_state; TYPE_1__ exp; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EXP_HANDSHAKE_LEN ; 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER 138 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC 137 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC2 136 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC3 135 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC4 134 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC5 133 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_NYKOWING 132 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_NYKOWING2 131 
#define  EXP_ID_CODE_CLASSIC_CONTROLLER_NYKOWING3 130 
#define  EXP_ID_CODE_CLASSIC_WIIU_PRO 129 
#define  EXP_ID_CODE_NUNCHUK 128 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_HANDSHAKE ; 
 int /*<<< orphan*/  WM_EXP_MEM_CALIBR ; 
 int /*<<< orphan*/  WM_EXP_MEM_ENABLE1 ; 
 int /*<<< orphan*/  WM_EXP_MEM_ENABLE2 ; 
 int* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_t*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_t*,int*,int /*<<< orphan*/ ,int,void (*) (struct wiimote_t*,int*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wiimote_t*,int /*<<< orphan*/ ,int*,int,void (*) (struct wiimote_t*,int*,int /*<<< orphan*/ )) ; 

void FUNC11(struct wiimote_t *wm,ubyte *data,uword len)
{
	int id;
	ubyte val;
	ubyte *buf = NULL;

	switch(wm->expansion_state) {
		/* These two initialization writes disable the encryption */
		case 0:
			wm->expansion_state = 1;
			val = 0x55;
			FUNC10(wm,WM_EXP_MEM_ENABLE1,&val,1,wiiuse_handshake_expansion);
			break;
		case 1:
			wm->expansion_state = 2;
			val = 0x00;
			FUNC10(wm,WM_EXP_MEM_ENABLE2,&val,1,wiiuse_handshake_expansion);
			break;
		case 2:
			wm->expansion_state = 3;
			buf = FUNC3(sizeof(ubyte)*EXP_HANDSHAKE_LEN);
			FUNC7(wm,buf,WM_EXP_MEM_CALIBR,EXP_HANDSHAKE_LEN,wiiuse_handshake_expansion);
			break;
		case 3:
			if(!data || !len) return;
			id = FUNC0(*(int*)(&data[220]));

			switch(id) {
				case EXP_ID_CODE_NUNCHUK:
					if(!FUNC6(wm,&wm->exp.nunchuk,data,len)) return;
					break;
				case EXP_ID_CODE_CLASSIC_CONTROLLER:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_NYKOWING:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_NYKOWING2:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_NYKOWING3:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC2:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC3:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC4:
				case EXP_ID_CODE_CLASSIC_CONTROLLER_GENERIC5:
				case EXP_ID_CODE_CLASSIC_WIIU_PRO:
					if(!FUNC5(wm,&wm->exp.classic,data,len)) return;
					break;
				default:
					if(!FUNC5(wm,&wm->exp.classic,data,len)) return;
					/*WIIMOTE_DISABLE_STATE(wm,WIIMOTE_STATE_EXP_HANDSHAKE);
					WIIMOTE_ENABLE_STATE(wm,WIIMOTE_STATE_EXP_FAILED);
					__lwp_wkspace_free(data);
					wiiuse_status(wm,NULL);
					return;*/
			}
			FUNC4(data);

			FUNC1(wm,WIIMOTE_STATE_EXP_HANDSHAKE);
			FUNC2(wm,WIIMOTE_STATE_EXP);
			FUNC8(wm);
			FUNC9(wm,NULL);
			break;
	}
}