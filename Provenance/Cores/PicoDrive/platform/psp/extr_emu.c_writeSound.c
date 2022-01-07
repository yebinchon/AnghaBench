
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PsndOut ;
 int lprintf (char*,scalar_t__) ;
 int samples_block ;
 int samples_done ;
 int samples_made ;
 int sceKernelSignalSema (int ,int) ;
 scalar_t__ sndBuffer ;
 scalar_t__ sndBuffer_endptr ;
 int sound_sem ;

__attribute__((used)) static void writeSound(int len)
{
 int ret;

 PsndOut += len / 2;






 if (PsndOut > sndBuffer_endptr) lprintf("snd oflow %i!\n", PsndOut - sndBuffer_endptr);
 if (PsndOut >= sndBuffer_endptr)
  PsndOut = sndBuffer;


 samples_made += len / 2;
 if (samples_made - samples_done > samples_block*2) {

  ret = sceKernelSignalSema(sound_sem, 1);

 }
}
