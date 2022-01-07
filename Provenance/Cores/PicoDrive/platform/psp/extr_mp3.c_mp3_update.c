
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndRate ;
 void mix_16h_to_32 (int*,short*,int) ;
 void mix_16h_to_32_s1 (int*,short*,int) ;
 void mix_16h_to_32_s2 (int*,short*,int) ;
 int mp3_buffer_offs ;
 scalar_t__ mp3_handle ;
 int mp3_job_started ;
 short** mp3_mix_buffer ;
 size_t mp3_play_bufsel ;
 int mp3_samples_ready ;
 scalar_t__ mp3_src_pos ;
 scalar_t__ mp3_src_size ;
 int psp_sem_lock (int ) ;
 int psp_sem_unlock (int ) ;
 int sceKernelDelayThread (int) ;
 int thread_busy_sem ;
 int thread_job_sem ;
 int working_buf ;

void mp3_update(int *buffer, int length, int stereo)
{
 int length_mp3;


 if (mp3_handle < 0 || mp3_src_pos >= mp3_src_size) return;

 length_mp3 = length;
 if (PsndRate == 22050) length_mp3 <<= 1;
 else if (PsndRate == 11025) length_mp3 <<= 2;


 if (mp3_job_started && mp3_samples_ready < length_mp3)
 {
  psp_sem_lock(thread_busy_sem);
  psp_sem_unlock(thread_busy_sem);
  mp3_job_started = 0;
  mp3_samples_ready += 1152;
 }


 if (mp3_samples_ready >= length_mp3)
 {
  int shr = 0;
  void (*mix_samples)(int *dest_buf, short *mp3_buf, int count) = mix_16h_to_32;
  if (PsndRate == 22050) { mix_samples = mix_16h_to_32_s1; shr = 1; }
  else if (PsndRate == 11025) { mix_samples = mix_16h_to_32_s2; shr = 2; }

  if (1152 - mp3_buffer_offs >= length_mp3) {
   mix_samples(buffer, mp3_mix_buffer[mp3_play_bufsel] + mp3_buffer_offs*2, length<<1);

   mp3_buffer_offs += length_mp3;
  } else {

   int left = 1152 - mp3_buffer_offs;
   if (mp3_play_bufsel == 0)
   {
    mix_samples(buffer, mp3_mix_buffer[0] + mp3_buffer_offs*2, length<<1);
    mp3_buffer_offs = length_mp3 - left;
    mp3_play_bufsel = 1;
   } else {
    mix_samples(buffer, mp3_mix_buffer[1] + mp3_buffer_offs*2, (left>>shr)<<1);
    mp3_buffer_offs = length_mp3 - left;
    mix_samples(buffer + ((left>>shr)<<1),
     mp3_mix_buffer[0], (mp3_buffer_offs>>shr)<<1);
    mp3_play_bufsel = 0;
   }
  }
  mp3_samples_ready -= length_mp3;
 }


 if (!mp3_job_started)
 {
  mp3_job_started = 1;
  working_buf ^= 1;


  psp_sem_lock(thread_busy_sem);
  psp_sem_unlock(thread_busy_sem);
  psp_sem_unlock(thread_job_sem);
  sceKernelDelayThread(1);
 }
}
