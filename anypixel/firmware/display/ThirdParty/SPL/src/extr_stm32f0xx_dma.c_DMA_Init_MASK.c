#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int CCR; int /*<<< orphan*/  CMAR; int /*<<< orphan*/  CPAR; int /*<<< orphan*/  CNDTR; } ;
struct TYPE_6__ {int DMA_DIR; int DMA_PeripheralInc; int DMA_MemoryInc; int DMA_PeripheralDataSize; int DMA_MemoryDataSize; int DMA_Mode; int DMA_Priority; int DMA_M2M; int /*<<< orphan*/  DMA_MemoryBaseAddr; int /*<<< orphan*/  DMA_PeripheralBaseAddr; int /*<<< orphan*/  DMA_BufferSize; } ;
typedef  TYPE_1__ DMA_InitTypeDef ;
typedef  TYPE_2__ DMA_Channel_TypeDef ;

/* Variables and functions */
 int CCR_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC10(FUNC0(DMAy_Channelx));
  FUNC10(FUNC2(DMA_InitStruct->DMA_DIR));
  FUNC10(FUNC1(DMA_InitStruct->DMA_BufferSize));
  FUNC10(FUNC8(DMA_InitStruct->DMA_PeripheralInc));
  FUNC10(FUNC5(DMA_InitStruct->DMA_MemoryInc));
  FUNC10(FUNC7(DMA_InitStruct->DMA_PeripheralDataSize));
  FUNC10(FUNC4(DMA_InitStruct->DMA_MemoryDataSize));
  FUNC10(FUNC6(DMA_InitStruct->DMA_Mode));
  FUNC10(FUNC9(DMA_InitStruct->DMA_Priority));
  FUNC10(FUNC3(DMA_InitStruct->DMA_M2M));

/*--------------------------- DMAy Channelx CCR Configuration ----------------*/
  /* Get the DMAy_Channelx CCR value */
  tmpreg = DMAy_Channelx->CCR;

  /* Clear MEM2MEM, PL, MSIZE, PSIZE, MINC, PINC, CIRC and DIR bits */
  tmpreg &= CCR_CLEAR_MASK;

  /* Configure DMAy Channelx: data transfer, data size, priority level and mode */
  /* Set DIR bit according to DMA_DIR value */
  /* Set CIRC bit according to DMA_Mode value */
  /* Set PINC bit according to DMA_PeripheralInc value */
  /* Set MINC bit according to DMA_MemoryInc value */
  /* Set PSIZE bits according to DMA_PeripheralDataSize value */
  /* Set MSIZE bits according to DMA_MemoryDataSize value */
  /* Set PL bits according to DMA_Priority value */
  /* Set the MEM2MEM bit according to DMA_M2M value */
  tmpreg |= DMA_InitStruct->DMA_DIR | DMA_InitStruct->DMA_Mode |
            DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
            DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
            DMA_InitStruct->DMA_Priority | DMA_InitStruct->DMA_M2M;

  /* Write to DMAy Channelx CCR */
  DMAy_Channelx->CCR = tmpreg;

/*--------------------------- DMAy Channelx CNDTR Configuration --------------*/
  /* Write to DMAy Channelx CNDTR */
  DMAy_Channelx->CNDTR = DMA_InitStruct->DMA_BufferSize;

/*--------------------------- DMAy Channelx CPAR Configuration ---------------*/
  /* Write to DMAy Channelx CPAR */
  DMAy_Channelx->CPAR = DMA_InitStruct->DMA_PeripheralBaseAddr;

/*--------------------------- DMAy Channelx CMAR Configuration ---------------*/
  /* Write to DMAy Channelx CMAR */
  DMAy_Channelx->CMAR = DMA_InitStruct->DMA_MemoryBaseAddr;
}