
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int chcr; int dar; scalar_t__ tcr; } ;
typedef int SH2 ;


 int EL_32XP ;
 int EL_ANOMALY ;
 int dmac_transfer_complete (int *,struct dma_chan*) ;
 int dmac_transfer_one (int *,struct dma_chan*) ;
 int elprintf (int,char*,int) ;

__attribute__((used)) static void dreq1_do(SH2 *sh2, struct dma_chan *chan)
{

  if ((chan->chcr & 0xc308) != 0x0000)
    elprintf(EL_32XP|EL_ANOMALY, "dreq1: bad control: %04x", chan->chcr);
  if ((chan->dar & ~0xf) != 0x20004030)
    elprintf(EL_32XP|EL_ANOMALY, "dreq1: bad dar?: %08x\n", chan->dar);

  dmac_transfer_one(sh2, chan);
  if (chan->tcr == 0)
    dmac_transfer_complete(sh2, chan);
}
