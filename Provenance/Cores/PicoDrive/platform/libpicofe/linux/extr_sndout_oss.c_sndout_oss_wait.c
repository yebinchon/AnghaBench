
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOUND_PCM_SYNC ;
 int ioctl (int ,int ,int ) ;
 int sounddev ;

void sndout_oss_wait(void)
{

 ioctl(sounddev, SOUND_PCM_SYNC, 0);
}
