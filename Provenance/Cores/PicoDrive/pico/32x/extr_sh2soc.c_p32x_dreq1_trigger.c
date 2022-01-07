
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dmac {int dmaor; TYPE_4__* chan; } ;
struct TYPE_6__ {int chcr; } ;
struct TYPE_5__ {int * peri_regs; } ;


 int DMA_DE ;
 int DMA_DME ;
 int EL_32XP ;
 int EL_ANOMALY ;
 int dreq1_do (TYPE_1__*,TYPE_4__*) ;
 int elprintf (int,char*) ;
 TYPE_1__ msh2 ;
 TYPE_1__ ssh2 ;

void p32x_dreq1_trigger(void)
{
  struct dmac *mdmac = (void *)&msh2.peri_regs[0x180 / 4];
  struct dmac *sdmac = (void *)&ssh2.peri_regs[0x180 / 4];
  int hit = 0;

  elprintf(EL_32XP, "dreq1_trigger");
  if ((mdmac->dmaor & DMA_DME) && (mdmac->chan[1].chcr & 3) == DMA_DE) {
    dreq1_do(&msh2, &mdmac->chan[1]);
    hit = 1;
  }
  if ((sdmac->dmaor & DMA_DME) && (sdmac->chan[1].chcr & 3) == DMA_DE) {
    dreq1_do(&ssh2, &sdmac->chan[1]);
    hit = 1;
  }
  (void)hit;
}
