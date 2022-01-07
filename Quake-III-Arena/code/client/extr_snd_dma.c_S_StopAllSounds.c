
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_ClearSoundBuffer () ;
 int S_StopBackgroundTrack () ;
 int s_soundStarted ;

void S_StopAllSounds(void) {
 if ( !s_soundStarted ) {
  return;
 }


 S_StopBackgroundTrack();

 S_ClearSoundBuffer ();
}
