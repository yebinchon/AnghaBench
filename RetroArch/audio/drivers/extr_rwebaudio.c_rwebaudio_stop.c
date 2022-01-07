
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RWebAudioStop () ;
 int rwebaudio_is_paused ;

__attribute__((used)) static bool rwebaudio_stop(void *data)
{
   (void)data;
   rwebaudio_is_paused = 1;
   return RWebAudioStop();
}
