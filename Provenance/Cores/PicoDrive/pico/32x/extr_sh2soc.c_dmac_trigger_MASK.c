#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dma_chan {int sar; int dar; int tcr; int chcr; } ;
struct TYPE_8__ {int dmac0_fifo_ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int DMA_AR ; 
 int EL_32XP ; 
 int EL_ANOMALY ; 
 TYPE_6__ Pico32x ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(SH2 *sh2, struct dma_chan *chan)
{
  FUNC3(sh2, EL_32XP, "DMA %08x->%08x, cnt %d, chcr %04x @%06x",
    chan->sar, chan->dar, chan->tcr, chan->chcr, sh2->pc);
  chan->tcr &= 0xffffff;

  if (chan->chcr & DMA_AR) {
    // auto-request transfer
    while ((int)chan->tcr > 0)
      FUNC1(sh2, chan);
    FUNC0(sh2, chan);
    return;
  }

  // DREQ0 is only sent after first 4 words are written.
  // we do multiple of 4 words to avoid messing up alignment
  if ((chan->sar & ~0x20000000) == 0x00004012) {
    if (Pico32x.dmac0_fifo_ptr && (Pico32x.dmac0_fifo_ptr & 3) == 0) {
      FUNC2(EL_32XP, "68k -> sh2 DMA");
      FUNC4();
    }
    return;
  }

  // DREQ1
  if ((chan->dar & 0xc7fffff0) == 0x00004030)
    return;

  FUNC2(EL_32XP|EL_ANOMALY, "unhandled DMA: "
    "%08x->%08x, cnt %d, chcr %04x @%06x",
    chan->sar, chan->dar, chan->tcr, chan->chcr, sh2->pc);
}