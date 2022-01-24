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
struct TYPE_2__ {int type; int /*<<< orphan*/  mp; int /*<<< orphan*/  classic; int /*<<< orphan*/  nunchuk; } ;
struct wiimote_t {TYPE_1__ exp; int /*<<< orphan*/  event; } ;

/* Variables and functions */
#define  EXP_CLASSIC 130 
#define  EXP_MOTION_PLUS 129 
 int EXP_NONE ; 
#define  EXP_NUNCHUK 128 
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP ; 
 int /*<<< orphan*/  WIIUSE_CLASSIC_CTRL_REMOVED ; 
 int /*<<< orphan*/  WIIUSE_MOTION_PLUS_REMOVED ; 
 int /*<<< orphan*/  WIIUSE_NUNCHUK_REMOVED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*,int /*<<< orphan*/ *) ; 

void FUNC7(struct wiimote_t *wm)
{
	if(!FUNC1(wm, WIIMOTE_STATE_EXP)) return;

	/* tell the associated module the expansion was removed */
	switch(wm->exp.type) {
		case EXP_NUNCHUK:
			FUNC4(&wm->exp.nunchuk);
			wm->event = WIIUSE_NUNCHUK_REMOVED;
			break;
		case EXP_CLASSIC:
			FUNC2(&wm->exp.classic);
			wm->event = WIIUSE_CLASSIC_CTRL_REMOVED;
			break;
		case EXP_MOTION_PLUS:
 			FUNC3(&wm->exp.mp);
 			wm->event = WIIUSE_MOTION_PLUS_REMOVED;
 			break;

		default:
			break;
	}

	FUNC0(wm, WIIMOTE_STATE_EXP);
	wm->exp.type = EXP_NONE;

	FUNC5(wm);
	FUNC6(wm,NULL);
}