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
typedef  int uint32_t ;
struct TYPE_4__ {int HISR; int LISR; } ;
typedef  scalar_t__ FlagStatus ;
typedef  TYPE_1__ DMA_TypeDef ;
typedef  int /*<<< orphan*/  DMA_Stream_TypeDef ;

/* Variables and functions */
 TYPE_1__* DMA1 ; 
 TYPE_1__* DMA2 ; 
 int /*<<< orphan*/ * DMA2_Stream0 ; 
 int HIGH_ISR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ RESERVED_MASK ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

FlagStatus FUNC3(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG)
{
  FlagStatus bitstatus = RESET;
  DMA_TypeDef* DMAy;
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC2(FUNC0(DMAy_Streamx));
  FUNC2(FUNC1(DMA_FLAG));

  /* Determine the DMA to which belongs the stream */
  if (DMAy_Streamx < DMA2_Stream0)
  {
    /* DMAy_Streamx belongs to DMA1 */
    DMAy = DMA1; 
  } 
  else 
  {
    /* DMAy_Streamx belongs to DMA2 */
    DMAy = DMA2; 
  }

  /* Check if the flag is in HISR or LISR */
  if ((DMA_FLAG & HIGH_ISR_MASK) != (uint32_t)RESET)
  {
    /* Get DMAy HISR register value */
    tmpreg = DMAy->HISR;
  }
  else
  {
    /* Get DMAy LISR register value */
    tmpreg = DMAy->LISR;
  }   
 
  /* Mask the reserved bits */
  tmpreg &= (uint32_t)RESERVED_MASK;

  /* Check the status of the specified DMA flag */
  if ((tmpreg & DMA_FLAG) != (uint32_t)RESET)
  {
    /* DMA_FLAG is set */
    bitstatus = SET;
  }
  else
  {
    /* DMA_FLAG is reset */
    bitstatus = RESET;
  }

  /* Return the DMA_FLAG status */
  return  bitstatus;
}