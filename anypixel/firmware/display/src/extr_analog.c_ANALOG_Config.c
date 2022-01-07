
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_7__ {int ADC_ScanDirection; int ADC_DataAlign; int ADC_ExternalTrigConvEdge; int ADC_ContinuousConvMode; int ADC_Resolution; } ;
struct TYPE_6__ {int DMA_BufferSize; int DMA_M2M; int DMA_Priority; int DMA_Mode; int DMA_MemoryDataSize; int DMA_PeripheralDataSize; int DMA_MemoryInc; int DMA_PeripheralInc; int DMA_DIR; void* DMA_MemoryBaseAddr; void* DMA_PeripheralBaseAddr; } ;
typedef TYPE_1__ DMA_InitTypeDef ;
typedef TYPE_2__ ADC_InitTypeDef ;


 int ADC1 ;
 int ADC_ChannelConfig (int ,int ,int ) ;
 int ADC_Channel_0 ;
 int ADC_Channel_1 ;
 int ADC_Channel_2 ;
 int ADC_Channel_3 ;
 int ADC_Channel_4 ;
 int ADC_Channel_5 ;
 int ADC_Channel_6 ;
 int ADC_Channel_7 ;
 int ADC_Channel_8 ;
 int ADC_Channel_9 ;
 int ADC_Cmd (int ,int ) ;
 int ADC_DMACmd (int ,int ) ;
 int ADC_DMAMode_Circular ;
 int ADC_DMARequestModeConfig (int ,int ) ;
 scalar_t__ ADC_DMA_ADDR ;
 int ADC_DataAlign_Right ;
 int ADC_ExternalTrigConvEdge_None ;
 int ADC_FLAG_ADRDY ;
 int ADC_GetCalibrationFactor (int ) ;
 int ADC_GetFlagStatus (int ,int ) ;
 int ADC_Init (int ,TYPE_2__*) ;
 int ADC_PINS_NUM ;
 int ADC_POWER_AHB ;
 int ADC_POWER_APB1 ;
 int ADC_POWER_APB2 ;
 int ADC_Resolution_12b ;
 int ADC_SampleTime_239_5Cycles ;
 int ADC_ScanDirection_Upward ;
 int ADC_StartOfConversion (int ) ;
 int ADC_StructInit (TYPE_2__*) ;
 int CONFIG_pins (int ,int ) ;
 int DMA1_Channel1 ;
 int DMA_Cmd (int ,int ) ;
 int DMA_DIR_PeripheralSRC ;
 int DMA_DeInit (int ) ;
 int DMA_Init (int ,TYPE_1__*) ;
 int DMA_M2M_Disable ;
 int DMA_MemoryDataSize_HalfWord ;
 int DMA_MemoryInc_Enable ;
 int DMA_Mode_Circular ;
 int DMA_PeripheralDataSize_HalfWord ;
 int DMA_PeripheralInc_Disable ;
 int DMA_Priority_High ;
 int ENABLE ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 int RCC_APB1PeriphClockCmd (int ,int ) ;
 int RCC_APB2PeriphClockCmd (int ,int ) ;
 scalar_t__ adc_readings ;
 int pins_adc ;

void ANALOG_Config(void) {
    ADC_InitTypeDef adci;
    DMA_InitTypeDef dmai;


    RCC_AHBPeriphClockCmd(ADC_POWER_AHB, ENABLE);
    RCC_APB1PeriphClockCmd(ADC_POWER_APB1, ENABLE);
 RCC_APB2PeriphClockCmd(ADC_POWER_APB2, ENABLE);


    CONFIG_pins(pins_adc, ADC_PINS_NUM);


    ADC_StructInit(&adci);
    adci.ADC_Resolution = ADC_Resolution_12b;
    adci.ADC_ContinuousConvMode = ENABLE;
    adci.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;
    adci.ADC_DataAlign = ADC_DataAlign_Right;
    adci.ADC_ScanDirection = ADC_ScanDirection_Upward;
    ADC_Init(ADC1, &adci);


    ADC_ChannelConfig(ADC1, ADC_Channel_0, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_1, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_2, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_3, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_4, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_5, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_6, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_7, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_8, ADC_SampleTime_239_5Cycles);
    ADC_ChannelConfig(ADC1, ADC_Channel_9, ADC_SampleTime_239_5Cycles);


    ADC_GetCalibrationFactor(ADC1);


    ADC_DMARequestModeConfig(ADC1, ADC_DMAMode_Circular);

    ADC_DMACmd(ADC1, ENABLE);

    ADC_Cmd(ADC1, ENABLE);


    while( !ADC_GetFlagStatus(ADC1, ADC_FLAG_ADRDY));

    ADC_StartOfConversion(ADC1);

    DMA_DeInit(DMA1_Channel1);
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
    DMA_Init(DMA1_Channel1, &dmai);
    DMA_Cmd(DMA1_Channel1, ENABLE);
}
