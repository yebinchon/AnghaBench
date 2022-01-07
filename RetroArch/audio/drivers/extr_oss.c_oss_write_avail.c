
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t bytes; } ;
typedef TYPE_1__ audio_buf_info ;


 int RARCH_ERR (char*) ;
 int SNDCTL_DSP_GETOSPACE ;
 scalar_t__ ioctl (int,int ,TYPE_1__*) ;

__attribute__((used)) static size_t oss_write_avail(void *data)
{
   audio_buf_info info;
   int *fd = (int*)data;

   if (ioctl(*fd, SNDCTL_DSP_GETOSPACE, &info) < 0)
   {
      RARCH_ERR("[OSS]: SNDCTL_DSP_GETOSPACE failed ...\n");
      return 0;
   }

   return info.bytes;
}
