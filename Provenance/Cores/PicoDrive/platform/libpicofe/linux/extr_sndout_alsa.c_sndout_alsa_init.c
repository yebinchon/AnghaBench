
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SND_PCM_STREAM_PLAYBACK ;
 int handle ;
 int snd_pcm_open (int *,char*,int ,int ) ;

int sndout_alsa_init(void)
{
 int ret;

 ret = snd_pcm_open(&handle, "default", SND_PCM_STREAM_PLAYBACK, 0);
 if (ret != 0)
  return -1;

 return 0;
}
