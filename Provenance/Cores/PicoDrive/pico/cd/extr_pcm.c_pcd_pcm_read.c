
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int update_cycles; TYPE_1__* ch; } ;
struct TYPE_6__ {TYPE_2__ pcm; } ;
struct TYPE_4__ {unsigned int addr; } ;


 unsigned int PCM_STEP_SHIFT ;
 TYPE_3__* Pico_mcd ;
 unsigned int SekCyclesDoneS68k () ;
 int pcd_pcm_sync (unsigned int) ;

unsigned int pcd_pcm_read(unsigned int a)
{
  unsigned int d, cycles = SekCyclesDoneS68k();
  if ((int)(cycles - Pico_mcd->pcm.update_cycles) >= 384)
    pcd_pcm_sync(cycles);

  d = Pico_mcd->pcm.ch[(a >> 1) & 7].addr >> PCM_STEP_SHIFT;
  if (a & 1)
    d >>= 8;

  return d & 0xff;
}
