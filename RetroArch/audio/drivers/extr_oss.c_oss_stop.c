
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDCTL_DSP_RESET ;
 scalar_t__ ioctl (int,int ,int ) ;
 int oss_is_paused ;

__attribute__((used)) static bool oss_stop(void *data)
{
   int *fd = (int*)data;

   if (ioctl(*fd, SNDCTL_DSP_RESET, 0) < 0)
      return 0;

   oss_is_paused = 1;
   return 1;
}
