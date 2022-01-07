
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sfxHandle_t ;


 int Com_Printf (int ,char*,scalar_t__) ;
 int S_COLOR_YELLOW ;
 int S_StartSound (int *,int ,int,scalar_t__) ;
 int listener_number ;
 scalar_t__ s_numSfx ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;

void S_StartLocalSound( sfxHandle_t sfxHandle, int channelNum ) {
 if ( !s_soundStarted || s_soundMuted ) {
  return;
 }

 if ( sfxHandle < 0 || sfxHandle >= s_numSfx ) {
  Com_Printf( S_COLOR_YELLOW, "S_StartLocalSound: handle %i out of range\n", sfxHandle );
  return;
 }

 S_StartSound (((void*)0), listener_number, channelNum, sfxHandle );
}
