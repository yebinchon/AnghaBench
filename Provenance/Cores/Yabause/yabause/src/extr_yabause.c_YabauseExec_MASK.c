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

/* Variables and functions */
 scalar_t__ FrameAdvanceVariable ; 
 int LagFrameFlag ; 
 scalar_t__ NeedAdvance ; 
 scalar_t__ Paused ; 
 scalar_t__ RunNormal ; 
 int /*<<< orphan*/  SCSP_MUTE_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(void) {

	//automatically advance lag frames, this should be optional later
	if (FrameAdvanceVariable > 0 && LagFrameFlag == 1){
		FrameAdvanceVariable = NeedAdvance; //advance a frame
		FUNC2();
		FrameAdvanceVariable = Paused; //pause next time
		return(0);
	}

	if (FrameAdvanceVariable == Paused){
		FUNC0(SCSP_MUTE_SYSTEM);
		return(0);
	}

	if (FrameAdvanceVariable == NeedAdvance){  //advance a frame
		FrameAdvanceVariable = Paused; //pause next time
		FUNC1(SCSP_MUTE_SYSTEM);
		FUNC2();
	}

	if (FrameAdvanceVariable == RunNormal ) { //run normally
		FUNC1(SCSP_MUTE_SYSTEM);
		FUNC2();
	}
	return 0;
}