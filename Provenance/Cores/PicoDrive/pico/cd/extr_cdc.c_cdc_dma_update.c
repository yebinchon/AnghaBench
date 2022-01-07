
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {int dbc; int ifstat; int ifctrl; int (* dma_w ) (int) ;} ;


 int BIT_DTBSY ;
 int BIT_DTEI ;
 int BIT_DTEIEN ;
 int BIT_DTEN ;
 int DMA_BYTES_PER_LINE ;
 int EL_INTS ;
 int PCDS_IEN5 ;
 TYPE_2__* Pico_mcd ;
 int SekInterruptS68k (int) ;
 TYPE_1__ cdc ;
 int do_dma (int (*) (int),int) ;
 int elprintf (int ,char*) ;
 scalar_t__ length ;
 int stub1 (int) ;

void cdc_dma_update(void)
{


  {


    do_dma(cdc.dma_w, (cdc.dbc + 1) >> 1);


    cdc.dbc = 0xf000;


    cdc.ifstat |= (BIT_DTBSY | BIT_DTEN);


    cdc.ifstat &= ~BIT_DTEI;


    if (cdc.ifctrl & BIT_DTEIEN)
    {

      if (Pico_mcd->s68k_regs[0x32+1] & PCDS_IEN5)
      {

        elprintf(EL_INTS, "cdc DTE irq 5");
        SekInterruptS68k(5);
      }
    }


    Pico_mcd->s68k_regs[0x04+0] = (Pico_mcd->s68k_regs[0x04+0] & 0x07) | 0x80;


    cdc.dma_w = 0;
  }
}
