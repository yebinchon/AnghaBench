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
struct wiimote_t {scalar_t__ expansion_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_FAILED ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct wiimote_t *wm)
{
	if(FUNC1(wm,WIIMOTE_STATE_EXP) || FUNC1(wm,WIIMOTE_STATE_EXP_FAILED) || FUNC1(wm,WIIMOTE_STATE_EXP_HANDSHAKE))
		return;

	wm->expansion_state = 0;
	FUNC0(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
	FUNC2(wm, NULL, 0);
}