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
typedef  void* uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  ADC_ScanDirection; int /*<<< orphan*/  ADC_DataAlign; int /*<<< orphan*/  ADC_ExternalTrigConvEdge; int /*<<< orphan*/  ADC_ContinuousConvMode; int /*<<< orphan*/  ADC_Resolution; } ;
struct TYPE_6__ {int DMA_BufferSize; int /*<<< orphan*/  DMA_M2M; int /*<<< orphan*/  DMA_Priority; int /*<<< orphan*/  DMA_Mode; int /*<<< orphan*/  DMA_MemoryDataSize; int /*<<< orphan*/  DMA_PeripheralDataSize; int /*<<< orphan*/  DMA_MemoryInc; int /*<<< orphan*/  DMA_PeripheralInc; int /*<<< orphan*/  DMA_DIR; void* DMA_MemoryBaseAddr; void* DMA_PeripheralBaseAddr; } ;
typedef  TYPE_1__ DMA_InitTypeDef ;
typedef  TYPE_2__ ADC_InitTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADC_Channel_0 ; 
 int /*<<< orphan*/  ADC_Channel_1 ; 
 int /*<<< orphan*/  ADC_Channel_2 ; 
 int /*<<< orphan*/  ADC_Channel_3 ; 
 int /*<<< orphan*/  ADC_Channel_4 ; 
 int /*<<< orphan*/  ADC_Channel_5 ; 
 int /*<<< orphan*/  ADC_Channel_6 ; 
 int /*<<< orphan*/  ADC_Channel_7 ; 
 int /*<<< orphan*/  ADC_Channel_8 ; 
 int /*<<< orphan*/  ADC_Channel_9 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADC_DMAMode_Circular ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ADC_DMA_ADDR ; 
 int /*<<< orphan*/  ADC_DataAlign_Right ; 
 int /*<<< orphan*/  ADC_ExternalTrigConvEdge_None ; 
 int /*<<< orphan*/  ADC_FLAG_ADRDY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ADC_PINS_NUM ; 
 int /*<<< orphan*/  ADC_POWER_AHB ; 
 int /*<<< orphan*/  ADC_POWER_APB1 ; 
 int /*<<< orphan*/  ADC_POWER_APB2 ; 
 int /*<<< orphan*/  ADC_Resolution_12b ; 
 int /*<<< orphan*/  ADC_SampleTime_239_5Cycles ; 
 int /*<<< orphan*/  ADC_ScanDirection_Upward ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA1_Channel1 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_DIR_PeripheralSRC ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  DMA_M2M_Disable ; 
 int /*<<< orphan*/  DMA_MemoryDataSize_HalfWord ; 
 int /*<<< orphan*/  DMA_MemoryInc_Enable ; 
 int /*<<< orphan*/  DMA_Mode_Circular ; 
 int /*<<< orphan*/  DMA_PeripheralDataSize_HalfWord ; 
 int /*<<< orphan*/  DMA_PeripheralInc_Disable ; 
 int /*<<< orphan*/  DMA_Priority_High ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ adc_readings ; 
 int /*<<< orphan*/  pins_adc ; 

void FUNC16(void) {
    ADC_InitTypeDef adci;
    DMA_InitTypeDef dmai;

    // Enable clocks
    FUNC13(ADC_POWER_AHB, ENABLE);
    FUNC14(ADC_POWER_APB1, ENABLE);
	FUNC15(ADC_POWER_APB2, ENABLE);

    // Configure the pins as analog inputs
    FUNC9(pins_adc, ADC_PINS_NUM);

    // configure ADC
    FUNC8(&adci);
    adci.ADC_Resolution = ADC_Resolution_12b;
    adci.ADC_ContinuousConvMode = ENABLE;
    adci.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;
    adci.ADC_DataAlign = ADC_DataAlign_Right;
    adci.ADC_ScanDirection = ADC_ScanDirection_Upward;
    FUNC6(ADC1, &adci);

    // configure channels
    FUNC0(ADC1, ADC_Channel_0, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_1, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_2, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_3, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_4, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_5, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_6, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_7, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_8, ADC_SampleTime_239_5Cycles);
    FUNC0(ADC1, ADC_Channel_9, ADC_SampleTime_239_5Cycles);

    // get calibration
    FUNC4(ADC1);

    // Set up DMA for circular buffer mode
    FUNC3(ADC1, ADC_DMAMode_Circular);

    FUNC2(ADC1, ENABLE);

    FUNC1(ADC1, ENABLE);

    // wait for the ADRDY flag is set
    while( !FUNC5(ADC1, ADC_FLAG_ADRDY));

    FUNC7(ADC1);

    FUNC11(DMA1_Channel1);
    dmai.DMA_PeripheralBaseAddr = (uint32_t)ADC_DMA_ADDR;
    dmai.DMA_MemoryBaseAddr = (uint32_t)adc_readings;
    dmai.DMA_DIR = DMA_DIR_PeripheralSRC;
    dmai.DMA_BufferSize = 10;
    dmai.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    dmai.DMA_MemoryInc = DMA_MemoryInc_Enable;
    dmai.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    dmai.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
    dmai.DMA_Mode = DMA_Mode_Circular;
    dmai.DMA_Priority = DMA_Priority_High;
    dmai.DMA_M2M = DMA_M2M_Disable;
    FUNC12(DMA1_Channel1, &dmai);
    FUNC10(DMA1_Channel1, ENABLE);
}