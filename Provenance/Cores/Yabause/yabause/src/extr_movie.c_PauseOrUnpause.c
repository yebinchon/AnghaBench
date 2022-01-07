
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FrameAdvanceVariable ;
 scalar_t__ Paused ;
 scalar_t__ RunNormal ;
 int SCSP_MUTE_SYSTEM ;
 int ScspMuteAudio (int ) ;
 int ScspUnMuteAudio (int ) ;

void PauseOrUnpause(void) {

 if(FrameAdvanceVariable == RunNormal) {
  FrameAdvanceVariable=Paused;
  ScspMuteAudio(SCSP_MUTE_SYSTEM);
 }
 else {
  FrameAdvanceVariable=RunNormal;
  ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
 }
}
