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
typedef  int /*<<< orphan*/  ubyte ;
struct wiimote_t {int /*<<< orphan*/  unid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_IR ; 
 int WIIMOTE_STATE_IR_SENS_LVL1 ; 
 int WIIMOTE_STATE_IR_SENS_LVL2 ; 
 int WIIMOTE_STATE_IR_SENS_LVL3 ; 
 int WIIMOTE_STATE_IR_SENS_LVL4 ; 
 int WIIMOTE_STATE_IR_SENS_LVL5 ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_REG_IR_BLOCK1 ; 
 int /*<<< orphan*/  WM_REG_IR_BLOCK2 ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_t*,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC6(struct wiimote_t* wm, int level) {
	char* block1 = NULL;
	char* block2 = NULL;

	if (!wm)	return;

	if (level > 5)		level = 5;
	if (level < 1)		level = 1;

	FUNC0(wm, (WIIMOTE_STATE_IR_SENS_LVL1 |
								WIIMOTE_STATE_IR_SENS_LVL2 |
								WIIMOTE_STATE_IR_SENS_LVL3 |
								WIIMOTE_STATE_IR_SENS_LVL4 |
								WIIMOTE_STATE_IR_SENS_LVL5));

	switch (level) {
		case 1:
			FUNC1(wm, WIIMOTE_STATE_IR_SENS_LVL1);
			break;
		case 2:
			FUNC1(wm, WIIMOTE_STATE_IR_SENS_LVL2);
			break;
		case 3:
			FUNC1(wm, WIIMOTE_STATE_IR_SENS_LVL3);
			break;
		case 4:
			FUNC1(wm, WIIMOTE_STATE_IR_SENS_LVL4);
			break;
		case 5:
			FUNC1(wm, WIIMOTE_STATE_IR_SENS_LVL5);
			break;
		default:
			return;
	}

	if(!FUNC2(wm,WIIMOTE_STATE_IR)) return;

	/* set the new sensitivity */
	FUNC4(wm, &block1, &block2);

	FUNC5(wm, WM_REG_IR_BLOCK1, (ubyte*)block1, 9,NULL);
	FUNC5(wm, WM_REG_IR_BLOCK2, (ubyte*)block2, 2,NULL);

	FUNC3("Set IR sensitivity to level %i (unid %i)", level, wm->unid);
}