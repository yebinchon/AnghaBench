
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 int mixerdev ;
 int open (char*,int ) ;
 int perror (char*) ;

int sndout_oss_init(void)
{
 if (mixerdev >= 0) close(mixerdev);
   mixerdev = open("/dev/mixer", O_RDWR);
 if (mixerdev == -1)
 {
  perror("open(\"/dev/mixer\")");
 }

 return 0;
}
