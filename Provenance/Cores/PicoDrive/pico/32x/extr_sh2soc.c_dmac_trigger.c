
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dma_chan {int sar; int dar; int tcr; int chcr; } ;
struct TYPE_8__ {int dmac0_fifo_ptr; } ;
struct TYPE_7__ {int pc; } ;
typedef TYPE_1__ SH2 ;


 int DMA_AR ;
 int EL_32XP ;
 int EL_ANOMALY ;
 TYPE_6__ Pico32x ;
 int dmac_transfer_complete (TYPE_1__*,struct dma_chan*) ;
 int dmac_transfer_one (TYPE_1__*,struct dma_chan*) ;
 int elprintf (int,char*,...) ;
 int elprintf_sh2 (TYPE_1__*,int,char*,int,int,int,int,int ) ;
 int p32x_dreq0_trigger () ;

__attribute__((used)) static void dmac_trigger(SH2 *sh2, struct dma_chan *chan)
{
  elprintf_sh2(sh2, EL_32XP, "DMA %08x->%08x, cnt %d, chcr %04x @%06x",
    chan->sar, chan->dar, chan->tcr, chan->chcr, sh2->pc);
  chan->tcr &= 0xffffff;

  if (chan->chcr & DMA_AR) {

    while ((int)chan->tcr > 0)
      dmac_transfer_one(sh2, chan);
    dmac_transfer_complete(sh2, chan);
    return;
  }



  if ((chan->sar & ~0x20000000) == 0x00004012) {
    if (Pico32x.dmac0_fifo_ptr && (Pico32x.dmac0_fifo_ptr & 3) == 0) {
      elprintf(EL_32XP, "68k -> sh2 DMA");
      p32x_dreq0_trigger();
    }
    return;
  }


  if ((chan->dar & 0xc7fffff0) == 0x00004030)
    return;

  elprintf(EL_32XP|EL_ANOMALY, "unhandled DMA: "
    "%08x->%08x, cnt %d, chcr %04x @%06x",
    chan->sar, chan->dar, chan->tcr, chan->chcr, sh2->pc);
}
