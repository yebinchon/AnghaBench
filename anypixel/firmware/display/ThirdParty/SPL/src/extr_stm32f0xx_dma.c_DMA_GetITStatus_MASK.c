#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int ISR; } ;
typedef  scalar_t__ ITStatus ;

/* Variables and functions */
 TYPE_1__* DMA1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ITStatus FUNC2(uint32_t DMA_IT)
{
  ITStatus bitstatus = RESET;

  /* Check the parameters */
  FUNC1(FUNC0(DMA_IT));

  /* Check the status of the specified DMA interrupt */
  if ((DMA1->ISR & DMA_IT) != (uint32_t)RESET)
  {
    /* DMA_IT is set */
    bitstatus = SET;
  }
  else
  {
    /* DMA_IT is reset */
    bitstatus = RESET;
  }
  /* Return the DMA_IT status */
  return  bitstatus;
}