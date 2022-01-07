
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAPTUREPARMS ;
typedef int AVFormatContext ;


 int AVStreamMaster ;
 int AV_LOG_DEBUG ;
 int av_log (int *,int ,char*) ;
 int dstruct (int *,int *,int ,char*) ;
 int dwAudioBufferSize ;
 int dwIndexSize ;
 int dwMCIStartTime ;
 int dwMCIStopTime ;
 int dwRequestMicroSecPerFrame ;
 int fAbortLeftMouse ;
 int fAbortRightMouse ;
 int fCaptureAudio ;
 int fDisableWriteCache ;
 int fLimitEnabled ;
 int fMCIControl ;
 int fMakeUserHitOKToCapture ;
 int fStepCaptureAt2x ;
 int fStepMCIDevice ;
 int fUsingDOSMemory ;
 int fYield ;
 int vKeyAbort ;
 int wChunkGranularity ;
 int wNumAudioRequested ;
 int wNumVideoRequested ;
 int wPercentDropForError ;
 int wStepCaptureAverageFrames ;
 int wTimeLimit ;

__attribute__((used)) static void dump_captureparms(AVFormatContext *s, CAPTUREPARMS *cparms)
{
    av_log(s, AV_LOG_DEBUG, "CAPTUREPARMS\n");
    dstruct(s, cparms, dwRequestMicroSecPerFrame, "lu");
    dstruct(s, cparms, fMakeUserHitOKToCapture, "d");
    dstruct(s, cparms, wPercentDropForError, "u");
    dstruct(s, cparms, fYield, "d");
    dstruct(s, cparms, dwIndexSize, "lu");
    dstruct(s, cparms, wChunkGranularity, "u");
    dstruct(s, cparms, fUsingDOSMemory, "d");
    dstruct(s, cparms, wNumVideoRequested, "u");
    dstruct(s, cparms, fCaptureAudio, "d");
    dstruct(s, cparms, wNumAudioRequested, "u");
    dstruct(s, cparms, vKeyAbort, "u");
    dstruct(s, cparms, fAbortLeftMouse, "d");
    dstruct(s, cparms, fAbortRightMouse, "d");
    dstruct(s, cparms, fLimitEnabled, "d");
    dstruct(s, cparms, wTimeLimit, "u");
    dstruct(s, cparms, fMCIControl, "d");
    dstruct(s, cparms, fStepMCIDevice, "d");
    dstruct(s, cparms, dwMCIStartTime, "lu");
    dstruct(s, cparms, dwMCIStopTime, "lu");
    dstruct(s, cparms, fStepCaptureAt2x, "d");
    dstruct(s, cparms, wStepCaptureAverageFrames, "u");
    dstruct(s, cparms, dwAudioBufferSize, "lu");
    dstruct(s, cparms, fDisableWriteCache, "d");
    dstruct(s, cparms, AVStreamMaster, "u");
}
