
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ifstat; int ifctrl; int* ctrl; int* stat; int** head; scalar_t__ dma_w; scalar_t__ cycles; } ;
struct TYPE_7__ {int pending; TYPE_2__* regs; } ;
struct TYPE_5__ {int l; } ;
struct TYPE_6__ {TYPE_1__ byte; } ;


 TYPE_4__ cdc ;
 int s68k_update_irq (int) ;
 TYPE_3__ scd ;

void cdc_reset(void)
{

  scd.regs[0x04>>1].byte.l = 0x00;


  cdc.ifstat = 0xff;
  cdc.ifctrl = 0x00;
  cdc.ctrl[0] = 0x00;
  cdc.ctrl[1] = 0x00;
  cdc.stat[0] = 0x00;
  cdc.stat[1] = 0x00;
  cdc.stat[2] = 0x00;
  cdc.stat[3] = 0x80;
  cdc.head[0][0] = 0x00;
  cdc.head[0][1] = 0x00;
  cdc.head[0][2] = 0x00;
  cdc.head[0][3] = 0x01;
  cdc.head[1][0] = 0x00;
  cdc.head[1][1] = 0x00;
  cdc.head[1][2] = 0x00;
  cdc.head[1][3] = 0x00;


  cdc.cycles = 0;


  cdc.dma_w = 0;


  if (scd.pending & (1 << 5))
  {

    scd.pending &= ~(1 << 5);


    s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
  }
}
