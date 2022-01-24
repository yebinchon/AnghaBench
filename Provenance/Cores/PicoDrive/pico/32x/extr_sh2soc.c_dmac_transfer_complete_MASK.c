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
struct dma_chan {int chcr; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int DMA_IE ; 
 int DMA_TE ; 
 int /*<<< orphan*/  SH2_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SH2 *sh2, struct dma_chan *chan)
{
  chan->chcr |= DMA_TE; // DMA has ended normally

  FUNC2(sh2, SH2_STATE_SLEEP, FUNC0());
  if (chan->chcr & DMA_IE)
    FUNC1(sh2, chan);
}