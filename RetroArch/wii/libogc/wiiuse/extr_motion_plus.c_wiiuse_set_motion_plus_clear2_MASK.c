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
typedef  int /*<<< orphan*/  uword ;
typedef  int /*<<< orphan*/  ubyte ;
struct wiimote_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_FAILED ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wiimote_t *wm,ubyte *data,uword len)
{
	FUNC0(wm, WIIMOTE_STATE_EXP);
	FUNC0(wm, WIIMOTE_STATE_EXP_FAILED);
	FUNC0(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
	FUNC1(wm);
	FUNC2(wm,NULL);
}