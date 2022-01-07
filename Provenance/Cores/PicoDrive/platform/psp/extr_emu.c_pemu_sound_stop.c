
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset32 (int*,int ,int) ;
 int psp_msleep (int) ;
 int samples_block ;
 scalar_t__ samples_done ;
 int samples_made ;
 scalar_t__ sceAudioOutput2GetRestSample () ;
 int sceAudio_5C37C0AE () ;
 int sceKernelDelayThread (int) ;
 int sceKernelSignalSema (int ,int) ;
 scalar_t__ sndBuffer ;
 int sound_sem ;

void pemu_sound_stop(void)
{
 int i;
 if (samples_done == 0)
 {



  memset32((int *)(void *)sndBuffer, 0, samples_block*4/4);
  samples_made = samples_block * 3;
  sceKernelSignalSema(sound_sem, 1);
 }
 sceKernelDelayThread(100*1000);
 samples_made = samples_done = 0;
 for (i = 0; sceAudioOutput2GetRestSample() > 0 && i < 16; i++)
  psp_msleep(100);
 sceAudio_5C37C0AE();
}
