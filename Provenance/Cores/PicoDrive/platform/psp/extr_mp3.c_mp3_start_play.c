
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_O_RDONLY ;
 int PSP_SEEK_END ;
 int PSP_SEEK_SET ;
 int initialized ;
 int lprintf (char*,...) ;
 scalar_t__ mp3_buffer_offs ;
 int mp3_codec_struct ;
 char* mp3_fname ;
 scalar_t__ mp3_handle ;
 int mp3_job_started ;
 scalar_t__ mp3_play_bufsel ;
 scalar_t__ mp3_samples_ready ;
 int mp3_src_pos ;
 scalar_t__ mp3_src_size ;
 int psp_sem_lock (int ) ;
 int psp_sem_unlock (int ) ;
 int sceAudiocodecInit (int ,int) ;
 int sceIoClose (scalar_t__) ;
 scalar_t__ sceIoLseek32 (scalar_t__,int,int ) ;
 scalar_t__ sceIoOpen (char*,int ,int) ;
 int sceKernelDelayThread (int) ;
 int thread_busy_sem ;
 int thread_job_sem ;
 scalar_t__ working_buf ;

void mp3_start_play(void *f, int pos)
{
 char *fname = f;

 if (!initialized) return;

 lprintf("mp3_start_play(%s) @ %i\n", fname, pos);
 psp_sem_lock(thread_busy_sem);

 if (mp3_fname != fname || mp3_handle < 0)
 {
  if (mp3_handle >= 0) sceIoClose(mp3_handle);
  mp3_handle = sceIoOpen(fname, PSP_O_RDONLY, 0777);
  if (mp3_handle < 0) {
   lprintf("sceIoOpen(%s) failed\n", fname);
   psp_sem_unlock(thread_busy_sem);
   return;
  }
  mp3_src_size = sceIoLseek32(mp3_handle, 0, PSP_SEEK_END);
  mp3_fname = fname;
 }


 sceAudiocodecInit(mp3_codec_struct, 0x1002);


 mp3_src_pos = (int) (((float)pos / 1023.0f) * (float)mp3_src_size);
 sceIoLseek32(mp3_handle, mp3_src_pos, PSP_SEEK_SET);
 lprintf("seek %i: %i/%i\n", pos, mp3_src_pos, mp3_src_size);

 mp3_job_started = 1;
 mp3_samples_ready = mp3_buffer_offs = mp3_play_bufsel = 0;
 working_buf = 0;


 psp_sem_unlock(thread_busy_sem);
 psp_sem_unlock(thread_job_sem);
 sceKernelDelayThread(1);
}
