
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int PLATFORM_SoundContinue () ;
 scalar_t__ Sound_enabled ;
 int Util_time () ;
 int last_audio_write_time ;
 scalar_t__ paused ;

void Sound_Continue(void)
{
 if (Sound_enabled && paused) {






  PLATFORM_SoundContinue();
  paused = FALSE;
 }
}
