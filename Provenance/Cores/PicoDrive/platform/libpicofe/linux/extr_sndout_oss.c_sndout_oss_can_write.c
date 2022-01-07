
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; int fragsize; } ;
typedef TYPE_1__ audio_buf_info ;


 int SNDCTL_DSP_GETOSPACE ;
 int can_write_safe ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int sounddev ;

int sndout_oss_can_write(int bytes)
{
 audio_buf_info bi;
 int ret;







 ret = ioctl(sounddev, SNDCTL_DSP_GETOSPACE, &bi);
 if (ret < 0)
  return 1;


 return bi.bytes - bi.fragsize >= bytes ? 1 : 0;
}
