
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int channels; int format; } ;
struct pcm {TYPE_1__ config; } ;


 int pcm_format_to_bits (int ) ;

__attribute__((used)) static unsigned int pcm_frames_to_bytes(const struct pcm *pcm, unsigned int frames)
{
   return frames * pcm->config.channels *
      (pcm_format_to_bits(pcm->config.format) >> 3);
}
