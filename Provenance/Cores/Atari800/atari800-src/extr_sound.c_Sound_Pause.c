
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLATFORM_SoundPause () ;
 scalar_t__ Sound_enabled ;
 scalar_t__ TRUE ;
 scalar_t__ paused ;

void Sound_Pause(void)
{
 if (Sound_enabled && !paused) {

  PLATFORM_SoundPause();
  paused = TRUE;
 }
}
