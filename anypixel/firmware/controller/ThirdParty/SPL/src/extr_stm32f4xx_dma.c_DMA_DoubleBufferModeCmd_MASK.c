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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  CR; } ;
typedef  scalar_t__ FunctionalState ;
typedef  TYPE_1__ DMA_Stream_TypeDef ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 scalar_t__ DMA_SxCR_DBM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState)
{  
  /* Check the parameters */
  FUNC2(FUNC0(DMAy_Streamx));
  FUNC2(FUNC1(NewState));

  /* Configure the Double Buffer mode */
  if (NewState != DISABLE)
  {
    /* Enable the Double buffer mode */
    DMAy_Streamx->CR |= (uint32_t)DMA_SxCR_DBM;
  }
  else
  {
    /* Disable the Double buffer mode */
    DMAy_Streamx->CR &= ~(uint32_t)DMA_SxCR_DBM;
  }
}