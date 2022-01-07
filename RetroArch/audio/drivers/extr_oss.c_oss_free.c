
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDCTL_DSP_RESET ;
 int close (int) ;
 int free (int*) ;
 scalar_t__ ioctl (int,int ,int ) ;

__attribute__((used)) static void oss_free(void *data)
{
   int *fd = (int*)data;

   if (ioctl(*fd, SNDCTL_DSP_RESET, 0) < 0)
      return;

   close(*fd);
   free(fd);
}
