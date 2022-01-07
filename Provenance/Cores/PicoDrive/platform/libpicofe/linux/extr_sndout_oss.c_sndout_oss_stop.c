
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int sndout_oss_can_restart ;
 int sounddev ;

void sndout_oss_stop(void)
{


 if (!sndout_oss_can_restart)
  return;

 if (sounddev < 0)
  return;




 close(sounddev);
 sounddev = -1;
}
