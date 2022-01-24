#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dma_chan {int chcr; int dar; scalar_t__ tcr; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int EL_32XP ; 
 int EL_ANOMALY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(SH2 *sh2, struct dma_chan *chan)
{
  // debug/sanity checks
  if ((chan->chcr & 0xc308) != 0x0000)
    FUNC2(EL_32XP|EL_ANOMALY, "dreq1: bad control: %04x", chan->chcr);
  if ((chan->dar & ~0xf) != 0x20004030)
    FUNC2(EL_32XP|EL_ANOMALY, "dreq1: bad dar?: %08x\n", chan->dar);

  FUNC1(sh2, chan);
  if (chan->tcr == 0)
    FUNC0(sh2, chan);
}