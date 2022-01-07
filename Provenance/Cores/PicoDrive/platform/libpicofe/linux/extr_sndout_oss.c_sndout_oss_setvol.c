
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOUND_MIXER_WRITE_PCM ;
 int ioctl (scalar_t__,int ,int*) ;
 scalar_t__ mixerdev ;

void sndout_oss_setvol(int l, int r)
{
 if (mixerdev < 0) return;

  l=l<0?0:l; l=l>255?255:l; r=r<0?0:r; r=r>255?255:r;
  l<<=8; l|=r;
  ioctl(mixerdev, SOUND_MIXER_WRITE_PCM, &l);
}
