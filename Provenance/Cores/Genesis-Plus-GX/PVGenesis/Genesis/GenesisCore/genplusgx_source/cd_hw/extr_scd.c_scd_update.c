
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ dma_w; } ;
struct TYPE_13__ {int cycles; } ;
struct TYPE_12__ {unsigned int cycles; } ;
struct TYPE_11__ {scalar_t__ cycles; } ;
struct TYPE_10__ {scalar_t__ cycles; int pending; scalar_t__ timer; TYPE_2__* regs; } ;
struct TYPE_8__ {int l; int h; } ;
struct TYPE_9__ {TYPE_1__ byte; } ;


 int SCYCLES_PER_LINE ;
 int TIMERS_SCYCLES_RATIO ;
 TYPE_7__ cdc ;
 int cdc_dma_update () ;
 TYPE_6__ cdd ;
 int cdd_update () ;
 int gfx_update (scalar_t__) ;
 TYPE_5__ m68k ;
 int m68k_run (unsigned int) ;
 TYPE_4__ s68k ;
 int s68k_run (scalar_t__) ;
 int s68k_update_irq (int) ;
 TYPE_3__ scd ;

void scd_update(unsigned int cycles)
{

  if (cdc.dma_w)
  {
    cdc_dma_update();
  }


  do
  {
    m68k_run(cycles);
    s68k_run(scd.cycles + SCYCLES_PER_LINE);
  }
  while ((m68k.cycles < cycles) || (s68k.cycles < (scd.cycles + SCYCLES_PER_LINE)));


  scd.cycles += SCYCLES_PER_LINE;


  cdd.cycles += (SCYCLES_PER_LINE * 3);
  if (cdd.cycles >= (500000 * 4))
  {

    cdd.cycles -= (500000 * 4);


    cdd_update();


    if (!(scd.regs[0x4a>>1].byte.l & 0xf0))
    {

      scd.regs[0x4a>>1].byte.l = 0xf0;


      scd.pending |= (1 << 4);


      if (scd.regs[0x32>>1].byte.l & 0x10)
      {

        s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
      }
    }
  }


  if (scd.timer)
  {

    scd.timer -= SCYCLES_PER_LINE;
    if (scd.timer <= 0)
    {

      scd.timer += (scd.regs[0x30>>1].byte.l * TIMERS_SCYCLES_RATIO);


      if (scd.regs[0x32>>1].byte.l & 0x08)
      {

        scd.pending |= (1 << 3);


        s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
      }
    }
  }


  if (scd.regs[0x58>>1].byte.h & 0x80)
  {

    gfx_update(scd.cycles);
  }
}
