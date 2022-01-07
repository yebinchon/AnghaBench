
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDCTL_DSP_POST ;
 int dsp_fd ;
 int ioctl (int ,int ,int *) ;

void PLATFORM_SoundPause(void)
{

 ioctl(dsp_fd, SNDCTL_DSP_POST, ((void*)0));
}
