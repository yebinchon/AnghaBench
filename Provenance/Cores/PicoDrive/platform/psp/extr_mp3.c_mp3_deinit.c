
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ initialized ;
 int lprintf (char*,scalar_t__) ;
 int mp3_codec_struct ;
 int * mp3_fname ;
 int mp3_handle ;
 int psp_sem_lock (int) ;
 int psp_sem_unlock (int) ;
 int sceAudiocodecReleaseEDRAM (int ) ;
 int sceIoClose (int) ;
 int sceKernelDelayThread (int) ;
 int sceKernelDeleteSema (int) ;
 int sceKernelSignalSema (int,int) ;
 int thread_busy_sem ;
 int thread_exit ;
 int thread_job_sem ;

void mp3_deinit(void)
{
 lprintf("mp3_deinit, initialized=%i\n", initialized);

 if (!initialized) return;
 thread_exit = 1;
 psp_sem_lock(thread_busy_sem);
 psp_sem_unlock(thread_busy_sem);

 sceKernelSignalSema(thread_job_sem, 1);
 sceKernelDelayThread(100*1000);

 if (mp3_handle >= 0) sceIoClose(mp3_handle);
 mp3_handle = -1;
 mp3_fname = ((void*)0);

 sceKernelDeleteSema(thread_busy_sem);
 thread_busy_sem = -1;
 sceKernelDeleteSema(thread_job_sem);
 thread_job_sem = -1;
 sceAudiocodecReleaseEDRAM(mp3_codec_struct);
 initialized = 0;
}
