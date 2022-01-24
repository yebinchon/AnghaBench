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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ M0AR; scalar_t__ M1AR; } ;
typedef  TYPE_1__ DMA_Stream_TypeDef ;

/* Variables and functions */
 scalar_t__ DMA_Memory_0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t MemoryBaseAddr,
                           uint32_t DMA_MemoryTarget)
{
  /* Check the parameters */
  FUNC2(FUNC0(DMAy_Streamx));
  FUNC2(FUNC1(DMA_MemoryTarget));
    
  /* Check the Memory target to be configured */
  if (DMA_MemoryTarget != DMA_Memory_0)
  {
    /* Write to DMAy Streamx M1AR */
    DMAy_Streamx->M1AR = MemoryBaseAddr;    
  }  
  else
  {
    /* Write to DMAy Streamx M0AR */
    DMAy_Streamx->M0AR = MemoryBaseAddr;  
  }
}