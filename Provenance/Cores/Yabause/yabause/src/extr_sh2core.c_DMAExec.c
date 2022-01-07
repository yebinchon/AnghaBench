
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DMAOR; int CHCR0; int CHCR1; int VCRDMA1; int TCR1; int DAR1; int SAR1; int VCRDMA0; int TCR0; int DAR0; int SAR0; } ;
struct TYPE_4__ {TYPE_1__ onchip; } ;


 TYPE_2__* CurrentSH2 ;
 int DMATransfer (int*,int *,int *,int *,int *) ;
 int LOG (char*) ;

void DMAExec(void) {

   if (CurrentSH2->onchip.DMAOR & 0x6)
      return;

   if ((CurrentSH2->onchip.CHCR0 & 0x1) && (CurrentSH2->onchip.CHCR1 & 0x1)) {
      if (CurrentSH2->onchip.DMAOR & 0x8) {
         LOG("dma\t: FIXME: two channel dma - round robin priority not properly implemented\n");
         DMATransfer(&CurrentSH2->onchip.CHCR0, &CurrentSH2->onchip.SAR0,
       &CurrentSH2->onchip.DAR0, &CurrentSH2->onchip.TCR0,
       &CurrentSH2->onchip.VCRDMA0);
         DMATransfer(&CurrentSH2->onchip.CHCR1, &CurrentSH2->onchip.SAR1,
       &CurrentSH2->onchip.DAR1, &CurrentSH2->onchip.TCR1,
                     &CurrentSH2->onchip.VCRDMA1);
      }
      else {
         DMATransfer(&CurrentSH2->onchip.CHCR0, &CurrentSH2->onchip.SAR0,
       &CurrentSH2->onchip.DAR0, &CurrentSH2->onchip.TCR0,
       &CurrentSH2->onchip.VCRDMA0);
         DMATransfer(&CurrentSH2->onchip.CHCR1, &CurrentSH2->onchip.SAR1,
       &CurrentSH2->onchip.DAR1, &CurrentSH2->onchip.TCR1,
       &CurrentSH2->onchip.VCRDMA1);
      }
   }
   else {
      if (CurrentSH2->onchip.CHCR0 & 0x1) {
         DMATransfer(&CurrentSH2->onchip.CHCR0, &CurrentSH2->onchip.SAR0,
       &CurrentSH2->onchip.DAR0, &CurrentSH2->onchip.TCR0,
       &CurrentSH2->onchip.VCRDMA0);
         return;
      }
      if (CurrentSH2->onchip.CHCR1 & 0x1) {
         DMATransfer(&CurrentSH2->onchip.CHCR1, &CurrentSH2->onchip.SAR1,
       &CurrentSH2->onchip.DAR1, &CurrentSH2->onchip.TCR1,
       &CurrentSH2->onchip.VCRDMA1);
         return;
      }
   }
}
