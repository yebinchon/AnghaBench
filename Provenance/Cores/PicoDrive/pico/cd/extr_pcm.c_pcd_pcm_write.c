
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int update_cycles; size_t cur_ch; unsigned int bank; unsigned int control; unsigned int enabled; TYPE_1__* ch; } ;
struct TYPE_6__ {int pcm_regs_dirty; TYPE_2__ pcm; } ;
struct TYPE_4__ {unsigned int* regs; } ;


 int EL_CD ;
 TYPE_3__* Pico_mcd ;
 unsigned int SekCyclesDoneS68k () ;
 int elprintf (int ,char*,unsigned int) ;
 int pcd_pcm_sync (unsigned int) ;

void pcd_pcm_write(unsigned int a, unsigned int d)
{
  unsigned int cycles = SekCyclesDoneS68k();
  if ((int)(cycles - Pico_mcd->pcm.update_cycles) >= 384)
    pcd_pcm_sync(cycles);

  if (a < 7)
  {
    Pico_mcd->pcm.ch[Pico_mcd->pcm.cur_ch].regs[a] = d;
  }
  else if (a == 7)
  {
    if (d & 0x40)
      Pico_mcd->pcm.cur_ch = d & 7;
    else
      Pico_mcd->pcm.bank = d & 0xf;
    Pico_mcd->pcm.control = d;
    elprintf(EL_CD, "pcm control %02x", Pico_mcd->pcm.control);
  }
  else if (a == 8)
  {
    Pico_mcd->pcm.enabled = ~d;
  }
  Pico_mcd->pcm_regs_dirty = 1;
}
