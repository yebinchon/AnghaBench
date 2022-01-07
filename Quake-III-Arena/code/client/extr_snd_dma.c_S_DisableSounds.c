
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_StopAllSounds () ;
 int qtrue ;
 int s_soundMuted ;

void S_DisableSounds( void ) {
 S_StopAllSounds();
 s_soundMuted = qtrue;
}
