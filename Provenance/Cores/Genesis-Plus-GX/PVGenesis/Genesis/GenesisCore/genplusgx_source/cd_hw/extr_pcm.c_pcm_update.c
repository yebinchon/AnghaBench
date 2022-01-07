
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cycles; } ;


 int * blip ;
 unsigned int blip_clocks_needed (int ,unsigned int) ;
 TYPE_1__ pcm ;
 int pcm_run (unsigned int) ;

void pcm_update(unsigned int samples)
{

  unsigned int clocks = blip_clocks_needed(blip[0], samples);


  if (clocks > 0)
  {
    pcm_run(clocks);
  }


  pcm.cycles = 0;
}
