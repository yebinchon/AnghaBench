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
struct _wpad_cb {struct wiimote_t* wm; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*) ; 

__attribute__((used)) static s32 FUNC2(struct _wpad_cb *wpdcb)
{
	struct wiimote_t *wm;

	if(wpdcb==NULL) return 0;

	wm = wpdcb->wm;
	if(wm && FUNC0(wm,WIIMOTE_STATE_CONNECTED)) {
		FUNC1(wm);
	}

	return 0;
}