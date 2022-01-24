#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dma_chan {unsigned short tcr; int chcr; int sar; int dar; } ;
struct TYPE_9__ {unsigned short* regs; int dmac0_fifo_ptr; int /*<<< orphan*/ * dmac_fifo; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int EL_32XP ; 
 int EL_ANOMALY ; 
 unsigned short P32XS_FULL ; 
 TYPE_7__ Pico32x ; 
 int /*<<< orphan*/  SH2_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char*,int,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC6(SH2 *sh2, struct dma_chan *chan)
{
  unsigned short dreqlen = Pico32x.regs[0x10 / 2];
  int i;

  // debug/sanity checks
  if (chan->tcr < dreqlen || chan->tcr > dreqlen + 4)
    FUNC1(EL_32XP|EL_ANOMALY, "dreq0: tcr0/len inconsistent: %d/%d",
      chan->tcr, dreqlen);
  // note: DACK is not connected, single addr mode should not be used
  if ((chan->chcr & 0x3f08) != 0x0400)
    FUNC1(EL_32XP|EL_ANOMALY, "dreq0: bad control: %04x", chan->chcr);
  if ((chan->sar & ~0x20000000) != 0x00004012)
    FUNC1(EL_32XP|EL_ANOMALY, "dreq0: bad sar?: %08x", chan->sar);

  // HACK: assume bus is busy and SH2 is halted
  sh2->state |= SH2_STATE_SLEEP;

  for (i = 0; i < Pico32x.dmac0_fifo_ptr && chan->tcr > 0; i++) {
    FUNC2(sh2, EL_32XP, "dreq0 [%08x] %04x, dreq_len %d",
      chan->dar, Pico32x.dmac_fifo[i], dreqlen);
    FUNC4(chan->dar, Pico32x.dmac_fifo[i], sh2);
    chan->dar += 2;
    chan->tcr--;
  }

  if (Pico32x.dmac0_fifo_ptr != i)
    FUNC3(Pico32x.dmac_fifo, &Pico32x.dmac_fifo[i],
      (Pico32x.dmac0_fifo_ptr - i) * 2);
  Pico32x.dmac0_fifo_ptr -= i;

  Pico32x.regs[6 / 2] &= ~P32XS_FULL;
  if (chan->tcr == 0)
    FUNC0(sh2, chan);
  else
    FUNC5(sh2, 16);
}