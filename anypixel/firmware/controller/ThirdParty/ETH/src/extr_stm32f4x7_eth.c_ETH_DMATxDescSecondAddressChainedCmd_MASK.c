#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ Status; } ;
typedef  scalar_t__ FunctionalState ;
typedef  TYPE_1__ ETH_DMADESCTypeDef ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 scalar_t__ ETH_DMATxDesc_TCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(ETH_DMADESCTypeDef *DMATxDesc, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC1(FUNC0(NewState));

  if (NewState != DISABLE)
  {
    /* Enable the selected DMA Tx Desc second address chained */
    DMATxDesc->Status |= ETH_DMATxDesc_TCH;
  }
  else
  {
    /* Disable the selected DMA Tx Desc second address chained */
    DMATxDesc->Status &=(~(uint32_t)ETH_DMATxDesc_TCH);
  }
}