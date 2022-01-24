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
struct padButtonStatus {int btns; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAD_PORT ; 
 int /*<<< orphan*/  PAD_SLOT ; 
 int PAD_STATE_DISCONN ; 
 int PAD_STATE_FINDCTP1 ; 
 int PAD_STATE_STABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct padButtonStatus*) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct padButtonStatus buttons;
	for (;;) {
		int ret = FUNC0(PAD_PORT, PAD_SLOT);
		if (ret == PAD_STATE_STABLE || ret == PAD_STATE_FINDCTP1)
			break;
		if (ret == PAD_STATE_DISCONN)
			return 0;
	}
	FUNC1(PAD_PORT, PAD_SLOT, &buttons);
	return ~buttons.btns;
}