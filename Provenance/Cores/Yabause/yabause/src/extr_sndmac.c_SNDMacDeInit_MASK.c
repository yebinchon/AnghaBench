#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  callback ;
struct TYPE_3__ {int /*<<< orphan*/ * inputProcRefCon; int /*<<< orphan*/ * inputProc; } ;
typedef  scalar_t__ OSStatus ;
typedef  TYPE_1__ AURenderCallbackStruct ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kAudioUnitProperty_SetRenderCallback ; 
 int /*<<< orphan*/  kAudioUnitScope_Input ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  outputAU ; 

__attribute__((used)) static void FUNC4(void) {
    OSStatus error;
    AURenderCallbackStruct callback;

    /* Stop the Audio Unit from playing any further */
    error = FUNC0(outputAU);

    if(error != noErr)
        return;

    /* Clear the callback */
    callback.inputProc = NULL;
    callback.inputProcRefCon = NULL;

    error = FUNC1(outputAU, kAudioUnitProperty_SetRenderCallback,
                                 kAudioUnitScope_Input, 0, &callback,
                                 sizeof(callback));

    if(error != noErr)
        return;

    /* Uninitialize the Audio Unit, now that we're done with it */
    error = FUNC2(outputAU);

    if(error != noErr)
        return;

    /* Close it, we're done */
    FUNC3(outputAU);
}