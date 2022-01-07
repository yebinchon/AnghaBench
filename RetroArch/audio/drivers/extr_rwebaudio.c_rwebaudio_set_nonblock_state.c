
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RWebAudioSetNonblockState (int) ;

__attribute__((used)) static void rwebaudio_set_nonblock_state(void *data, bool state)
{
   (void)data;
   RWebAudioSetNonblockState(state);
}
