
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOUND_MIXER_WRITE_PCM ;
 int ioctl (scalar_t__,int ,int*) ;
 scalar_t__ mixerdev ;
 int perror (char*) ;

__attribute__((used)) static int step_volume(int *volume, int diff)
{
 int ret, val;

 if (mixerdev < 0)
  return -1;

 *volume += diff;
 if (*volume > 255)
  *volume = 255;
 else if (*volume < 0)
  *volume = 0;

 val = *volume;
 val |= val << 8;

  ret = ioctl(mixerdev, SOUND_MIXER_WRITE_PCM, &val);
 if (ret == -1) {
  perror("WRITE_PCM");
  return ret;
 }

 return 0;
}
