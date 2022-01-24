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
typedef  int /*<<< orphan*/  CAPTUREPARMS ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVStreamMaster ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dwAudioBufferSize ; 
 int /*<<< orphan*/  dwIndexSize ; 
 int /*<<< orphan*/  dwMCIStartTime ; 
 int /*<<< orphan*/  dwMCIStopTime ; 
 int /*<<< orphan*/  dwRequestMicroSecPerFrame ; 
 int /*<<< orphan*/  fAbortLeftMouse ; 
 int /*<<< orphan*/  fAbortRightMouse ; 
 int /*<<< orphan*/  fCaptureAudio ; 
 int /*<<< orphan*/  fDisableWriteCache ; 
 int /*<<< orphan*/  fLimitEnabled ; 
 int /*<<< orphan*/  fMCIControl ; 
 int /*<<< orphan*/  fMakeUserHitOKToCapture ; 
 int /*<<< orphan*/  fStepCaptureAt2x ; 
 int /*<<< orphan*/  fStepMCIDevice ; 
 int /*<<< orphan*/  fUsingDOSMemory ; 
 int /*<<< orphan*/  fYield ; 
 int /*<<< orphan*/  vKeyAbort ; 
 int /*<<< orphan*/  wChunkGranularity ; 
 int /*<<< orphan*/  wNumAudioRequested ; 
 int /*<<< orphan*/  wNumVideoRequested ; 
 int /*<<< orphan*/  wPercentDropForError ; 
 int /*<<< orphan*/  wStepCaptureAverageFrames ; 
 int /*<<< orphan*/  wTimeLimit ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s, CAPTUREPARMS *cparms)
{
    FUNC0(s, AV_LOG_DEBUG, "CAPTUREPARMS\n");
    FUNC1(s, cparms, dwRequestMicroSecPerFrame, "lu");
    FUNC1(s, cparms, fMakeUserHitOKToCapture, "d");
    FUNC1(s, cparms, wPercentDropForError, "u");
    FUNC1(s, cparms, fYield, "d");
    FUNC1(s, cparms, dwIndexSize, "lu");
    FUNC1(s, cparms, wChunkGranularity, "u");
    FUNC1(s, cparms, fUsingDOSMemory, "d");
    FUNC1(s, cparms, wNumVideoRequested, "u");
    FUNC1(s, cparms, fCaptureAudio, "d");
    FUNC1(s, cparms, wNumAudioRequested, "u");
    FUNC1(s, cparms, vKeyAbort, "u");
    FUNC1(s, cparms, fAbortLeftMouse, "d");
    FUNC1(s, cparms, fAbortRightMouse, "d");
    FUNC1(s, cparms, fLimitEnabled, "d");
    FUNC1(s, cparms, wTimeLimit, "u");
    FUNC1(s, cparms, fMCIControl, "d");
    FUNC1(s, cparms, fStepMCIDevice, "d");
    FUNC1(s, cparms, dwMCIStartTime, "lu");
    FUNC1(s, cparms, dwMCIStopTime, "lu");
    FUNC1(s, cparms, fStepCaptureAt2x, "d");
    FUNC1(s, cparms, wStepCaptureAverageFrames, "u");
    FUNC1(s, cparms, dwAudioBufferSize, "lu");
    FUNC1(s, cparms, fDisableWriteCache, "d");
    FUNC1(s, cparms, AVStreamMaster, "u");
}