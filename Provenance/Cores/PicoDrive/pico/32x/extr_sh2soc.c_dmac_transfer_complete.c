
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int chcr; } ;
typedef int SH2 ;


 int DMA_IE ;
 int DMA_TE ;
 int SH2_STATE_SLEEP ;
 int SekCyclesDone () ;
 int dmac_te_irq (int *,struct dma_chan*) ;
 int p32x_sh2_poll_event (int *,int ,int ) ;

__attribute__((used)) static void dmac_transfer_complete(SH2 *sh2, struct dma_chan *chan)
{
  chan->chcr |= DMA_TE;

  p32x_sh2_poll_event(sh2, SH2_STATE_SLEEP, SekCyclesDone());
  if (chan->chcr & DMA_IE)
    dmac_te_irq(sh2, chan);
}
