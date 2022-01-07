
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int w; } ;
struct TYPE_10__ {int ifstat; int ifctrl; TYPE_3__ dbc; int (* dma_w ) (int) ;} ;
struct TYPE_9__ {int pending; TYPE_2__* regs; } ;
struct TYPE_6__ {int l; int h; } ;
struct TYPE_7__ {TYPE_1__ byte; } ;


 int BIT_DTBSY ;
 int BIT_DTEI ;
 int BIT_DTEIEN ;
 int BIT_DTEN ;
 int DMA_BYTES_PER_LINE ;
 TYPE_5__ cdc ;
 int s68k_update_irq (int) ;
 TYPE_4__ scd ;
 int stub1 (int) ;
 int stub2 (int) ;

void cdc_dma_update(void)
{

  int length = DMA_BYTES_PER_LINE;


  if (cdc.dbc.w < DMA_BYTES_PER_LINE)
  {

    cdc.dma_w((cdc.dbc.w + 1) >> 1);


    cdc.dbc.w = 0xf000;


    cdc.ifstat |= (BIT_DTBSY | BIT_DTEN);


    cdc.ifstat &= ~BIT_DTEI;


    if (cdc.ifctrl & BIT_DTEIEN)
    {

      scd.pending |= (1 << 5);


      if (scd.regs[0x32>>1].byte.l & 0x20)
      {

        s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
      }
    }


    scd.regs[0x04>>1].byte.h = (scd.regs[0x04>>1].byte.h & 0x07) | 0x80;


    cdc.dma_w = 0;
  }
  else
  {

    cdc.dma_w(DMA_BYTES_PER_LINE >> 1);


    cdc.dbc.w -= length;
  }
}
