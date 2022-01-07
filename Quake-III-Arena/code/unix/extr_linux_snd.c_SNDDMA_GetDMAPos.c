
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct count_info {int ptr; } ;
struct TYPE_4__ {int samplebits; } ;
struct TYPE_3__ {int string; } ;


 int Com_Printf (char*) ;
 int SNDCTL_DSP_GETOPTR ;
 int audio_fd ;
 int close (int ) ;
 TYPE_2__ dma ;
 int ioctl (int ,int ,struct count_info*) ;
 int perror (int ) ;
 scalar_t__ snd_inited ;
 TYPE_1__* snddevice ;

int SNDDMA_GetDMAPos(void)
{
 struct count_info count;

 if (!snd_inited) return 0;

 if (ioctl(audio_fd, SNDCTL_DSP_GETOPTR, &count) == -1) {
  perror(snddevice->string);
  Com_Printf("Uh, sound dead.\n");
  close(audio_fd);
  snd_inited = 0;
  return 0;
 }
 return count.ptr / (dma.samplebits / 8);
}
