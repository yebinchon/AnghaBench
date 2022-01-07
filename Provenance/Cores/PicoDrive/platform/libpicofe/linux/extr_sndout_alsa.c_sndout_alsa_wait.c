
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_pcm_sframes_t ;


 int buffer_size ;
 int handle ;
 int snd_pcm_avail (int ) ;
 int usleep (int) ;

void sndout_alsa_wait(void)
{
 snd_pcm_sframes_t left;

 while (1)
 {
  left = snd_pcm_avail(handle);
  if (left < 0 || left >= buffer_size / 2)
   break;

  usleep(4000);
 }
}
