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
struct wiimote_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_ACC ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_t*,int /*<<< orphan*/ *) ; 

void FUNC4(struct wiimote_t* wm, int status)
{
	if (status) {
		if(FUNC2(wm,WIIMOTE_STATE_ACC)) return;
		FUNC1(wm, WIIMOTE_STATE_ACC);
	} else {
		if(!FUNC2(wm,WIIMOTE_STATE_ACC)) return;
		FUNC0(wm, WIIMOTE_STATE_ACC);
	}

	if(!FUNC2(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) return;

	FUNC3(wm,NULL);
}