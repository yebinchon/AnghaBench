
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct audio_buf_info {int bytes; } ;
struct TYPE_3__ {scalar_t__ private; } ;
typedef TYPE_1__ SexyAL_device ;


 int SNDCTL_DSP_GETOSPACE ;
 int ioctl (int,int ,struct audio_buf_info*) ;

uint32_t SexyALI_OSS_RawCanWrite(SexyAL_device *device)
{
 struct audio_buf_info ai;
 if(!ioctl(*(int *)device->private,SNDCTL_DSP_GETOSPACE,&ai))
  return(ai.bytes);
 else
  return(0);
}
