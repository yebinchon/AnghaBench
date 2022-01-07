
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int mixerdev ;
 int sounddev ;

void sndout_oss_exit(void)
{
 if (sounddev >= 0) close(sounddev); sounddev = -1;
 if (mixerdev >= 0) close(mixerdev); mixerdev = -1;
}
