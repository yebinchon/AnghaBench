
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceSize ;


 int PSP_AUDIO_VOLUME_MAX ;
 int lprintf (char*,...) ;
 int samples_block ;
 int samples_done ;
 int samples_made ;
 int sceAudio_E0727056 (int ,scalar_t__) ;
 int sceKernelExitDeleteThread (int ) ;
 int sceKernelGetThreadCurrentPriority () ;
 int sceKernelWaitSema (int ,int,int ) ;
 scalar_t__ sndBuffer ;
 scalar_t__ sndBuffer_endptr ;
 scalar_t__ snd_playptr ;
 int sound_sem ;
 int sound_thread_exit ;

__attribute__((used)) static int sound_thread(SceSize args, void *argp)
{
 int ret = 0;

 lprintf("sthr: started, priority %i\n", sceKernelGetThreadCurrentPriority());

 while (!sound_thread_exit)
 {
  if (samples_made - samples_done < samples_block) {


   while (samples_made - samples_done <= samples_block*2 && !sound_thread_exit)
    ret = sceKernelWaitSema(sound_sem, 1, 0);
   if (ret < 0) lprintf("sthr: sceKernelWaitSema: %i\n", ret);
   continue;
  }



  ret = sceAudio_E0727056(PSP_AUDIO_VOLUME_MAX, snd_playptr);

  samples_done += samples_block;
  snd_playptr += samples_block;
  if (snd_playptr >= sndBuffer_endptr)
   snd_playptr = sndBuffer;

  if (ret < 0)
   lprintf("sthr: sceAudio_E0727056: %08x; pos %i/%i\n", ret, samples_done, samples_made);


  if (samples_made - samples_done >= samples_block*3) {

   samples_done += samples_block;
   snd_playptr += samples_block;
  }

 }

 lprintf("sthr: exit\n");
 sceKernelExitDeleteThread(0);
 return 0;
}
