#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dmac {int vcrdma0; int vcrdma1; struct dma_chan* chan; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {scalar_t__ peri_regs; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32XP ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC3(SH2 *sh2, struct dma_chan *chan)
{
  char *regs = (void *)sh2->peri_regs;
  struct dmac *dmac = (void *)(regs + 0x180);
  int level = FUNC0(regs, 0xe2) & 0x0f; // IPRA
  int vector = (chan == &dmac->chan[0]) ?
               dmac->vcrdma0 : dmac->vcrdma1;

  FUNC1(EL_32XP, "dmac irq %d %d", level, vector);
  FUNC2(sh2, level, vector & 0x7f);
}