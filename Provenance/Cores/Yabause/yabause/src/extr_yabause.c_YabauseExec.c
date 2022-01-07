
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FrameAdvanceVariable ;
 int LagFrameFlag ;
 scalar_t__ NeedAdvance ;
 scalar_t__ Paused ;
 scalar_t__ RunNormal ;
 int SCSP_MUTE_SYSTEM ;
 int ScspMuteAudio (int ) ;
 int ScspUnMuteAudio (int ) ;
 int YabauseEmulate () ;

int YabauseExec(void) {


 if (FrameAdvanceVariable > 0 && LagFrameFlag == 1){
  FrameAdvanceVariable = NeedAdvance;
  YabauseEmulate();
  FrameAdvanceVariable = Paused;
  return(0);
 }

 if (FrameAdvanceVariable == Paused){
  ScspMuteAudio(SCSP_MUTE_SYSTEM);
  return(0);
 }

 if (FrameAdvanceVariable == NeedAdvance){
  FrameAdvanceVariable = Paused;
  ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
  YabauseEmulate();
 }

 if (FrameAdvanceVariable == RunNormal ) {
  ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
  YabauseEmulate();
 }
 return 0;
}
