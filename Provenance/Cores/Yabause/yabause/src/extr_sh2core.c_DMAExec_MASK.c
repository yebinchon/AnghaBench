#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int DMAOR; int CHCR0; int CHCR1; int /*<<< orphan*/  VCRDMA1; int /*<<< orphan*/  TCR1; int /*<<< orphan*/  DAR1; int /*<<< orphan*/  SAR1; int /*<<< orphan*/  VCRDMA0; int /*<<< orphan*/  TCR0; int /*<<< orphan*/  DAR0; int /*<<< orphan*/  SAR0; } ;
struct TYPE_4__ {TYPE_1__ onchip; } ;

/* Variables and functions */
 TYPE_2__* CurrentSH2 ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void) {
   // If AE and NMIF bits are set, we can't continue
   if (CurrentSH2->onchip.DMAOR & 0x6)
      return;

   if ((CurrentSH2->onchip.CHCR0 & 0x1) && (CurrentSH2->onchip.CHCR1 & 0x1)) { // both channel wants DMA
      if (CurrentSH2->onchip.DMAOR & 0x8) { // round robin priority
         FUNC1("dma\t: FIXME: two channel dma - round robin priority not properly implemented\n");
         FUNC0(&CurrentSH2->onchip.CHCR0, &CurrentSH2->onchip.SAR0,
		     &CurrentSH2->onchip.DAR0,  &CurrentSH2->onchip.TCR0,
		     &CurrentSH2->onchip.VCRDMA0);
         FUNC0(&CurrentSH2->onchip.CHCR1, &CurrentSH2->onchip.SAR1,
		     &CurrentSH2->onchip.DAR1,  &CurrentSH2->onchip.TCR1,
                     &CurrentSH2->onchip.VCRDMA1);
      }
      else { // channel 0 > channel 1 priority
         FUNC0(&CurrentSH2->onchip.CHCR0, &CurrentSH2->onchip.SAR0,
		     &CurrentSH2->onchip.DAR0,  &CurrentSH2->onchip.TCR0,
		     &CurrentSH2->onchip.VCRDMA0);
         FUNC0(&CurrentSH2->onchip.CHCR1, &CurrentSH2->onchip.SAR1,
		     &CurrentSH2->onchip.DAR1,  &CurrentSH2->onchip.TCR1,
		     &CurrentSH2->onchip.VCRDMA1);
      }
   }
   else { // only one channel wants DMA
      if (CurrentSH2->onchip.CHCR0 & 0x1) { // DMA for channel 0
         FUNC0(&CurrentSH2->onchip.CHCR0, &CurrentSH2->onchip.SAR0,
		     &CurrentSH2->onchip.DAR0,  &CurrentSH2->onchip.TCR0,
		     &CurrentSH2->onchip.VCRDMA0);
         return;
      }
      if (CurrentSH2->onchip.CHCR1 & 0x1) { // DMA for channel 1
         FUNC0(&CurrentSH2->onchip.CHCR1, &CurrentSH2->onchip.SAR1,
		     &CurrentSH2->onchip.DAR1,  &CurrentSH2->onchip.TCR1,
		     &CurrentSH2->onchip.VCRDMA1);
         return;
      }
   }
}