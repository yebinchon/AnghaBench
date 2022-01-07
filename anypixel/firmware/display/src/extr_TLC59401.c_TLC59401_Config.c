
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int CR1; } ;
struct TYPE_12__ {int SPI_NSS; int SPI_CPHA; int SPI_CPOL; int SPI_Mode; int SPI_FirstBit; int SPI_Direction; int SPI_BaudRatePrescaler; int SPI_DataSize; } ;
struct TYPE_11__ {void* TIM_OCNIdleState; void* TIM_OCIdleState; int TIM_OCNPolarity; int TIM_OCPolarity; scalar_t__ TIM_Pulse; int TIM_OutputNState; int TIM_OutputState; int TIM_OCMode; } ;
struct TYPE_10__ {int TIM_Period; scalar_t__ TIM_RepetitionCounter; int TIM_ClockDivision; int TIM_CounterMode; scalar_t__ TIM_Prescaler; } ;
typedef TYPE_1__ TIM_TimeBaseInitTypeDef ;
typedef TYPE_2__ TIM_OCInitTypeDef ;
typedef TYPE_3__ SPI_InitTypeDef ;


 int CONFIG_pins (int ,int ) ;
 int Delay (int) ;
 int ENABLE ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 int RCC_APB1PeriphClockCmd (int ,int ) ;
 int RCC_APB2PeriphClockCmd (int ,int ) ;
 int SPI_BaudRatePrescaler_64 ;
 int SPI_CPHA_1Edge ;
 int SPI_CPOL_Low ;
 int SPI_CR1_SPE ;
 int SPI_DataSize_8b ;
 int SPI_Direction_2Lines_FullDuplex ;
 int SPI_FirstBit_MSB ;
 int SPI_I2S_DeInit (TYPE_4__*) ;
 int SPI_Init (TYPE_4__*,TYPE_3__*) ;
 int SPI_Mode_Master ;
 int SPI_NSS_Soft ;
 int TIM_CKD_DIV1 ;
 int TIM_Cmd (int ,int ) ;
 int TIM_CounterMode_Up ;
 int TIM_CtrlPWMOutputs (int ,int ) ;
 void* TIM_OCIdleState_Reset ;
 int TIM_OCMode_PWM1 ;
 int TIM_OCNPolarity_High ;
 int TIM_OCPolarity_High ;
 int TIM_OutputNState_Disable ;
 int TIM_OutputState_Enable ;
 int TIM_TimeBaseInit (int ,TYPE_1__*) ;
 int TLC59401_CHANNELS ;
 int TLC59401_GSCLK_CCR ;
 int TLC59401_GSCLK_INIT (int ,TYPE_2__*) ;
 int TLC59401_LOOKUP_ENTRIES ;
 int TLC59401_NUM_PINS ;
 int TLC59401_POWER_AHB ;
 int TLC59401_POWER_APB1 ;
 int TLC59401_POWER_APB2 ;
 TYPE_4__* TLC59401_SPI ;
 int TLC59401_Send () ;
 int TLC59401_SendDotCorrection () ;
 int TLC59401_SetDotCorrection (int,int) ;
 int TLC59401_SetValue (int,int ) ;
 int TLC59401_TMR ;
 int enableBlank ;
 int** lookupTable ;
 int pins_tlc59401 ;

void TLC59401_Config(void) {
    int i, j;

    TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
 TIM_OCInitTypeDef TIM_OCInitStructure;
 SPI_InitTypeDef SPI_InitStruct;

    for(i = 0; i < TLC59401_LOOKUP_ENTRIES; i++) {
        for(j=0; j < TLC59401_CHANNELS; j++) {
            lookupTable[j][i] = (4000*i)/64;
        }
    }


    RCC_AHBPeriphClockCmd(TLC59401_POWER_AHB, ENABLE);
    RCC_APB1PeriphClockCmd(TLC59401_POWER_APB1, ENABLE);
 RCC_APB2PeriphClockCmd(TLC59401_POWER_APB2, ENABLE);




 TIM_TimeBaseStructure.TIM_Prescaler = 0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseStructure.TIM_Period = 1;
    TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TLC59401_TMR, &TIM_TimeBaseStructure);


    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Disable;
    TIM_OCInitStructure.TIM_Pulse = 0;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Reset;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;
    TLC59401_GSCLK_INIT(TLC59401_TMR, &TIM_OCInitStructure);

    TLC59401_GSCLK_CCR = (TIM_TimeBaseStructure.TIM_Period + 1)/2;

    CONFIG_pins(pins_tlc59401, TLC59401_NUM_PINS);


 SPI_InitStruct.SPI_DataSize = SPI_DataSize_8b;
    SPI_InitStruct.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_64;
 SPI_InitStruct.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
 SPI_InitStruct.SPI_FirstBit = SPI_FirstBit_MSB;
 SPI_InitStruct.SPI_Mode = SPI_Mode_Master;
 SPI_InitStruct.SPI_CPOL = SPI_CPOL_Low;
 SPI_InitStruct.SPI_CPHA = SPI_CPHA_1Edge;
 SPI_InitStruct.SPI_NSS = SPI_NSS_Soft;

    SPI_I2S_DeInit(TLC59401_SPI);

 TLC59401_SPI->CR1 &= ~SPI_CR1_SPE;


 SPI_Init(TLC59401_SPI, &SPI_InitStruct);


 TLC59401_SPI->CR1 |= SPI_CR1_SPE;

    for(i = 0; i < 5; i++) {

  TLC59401_SetDotCorrection(i*3+1, 31);
  TLC59401_SetDotCorrection(i*3+2, 63);
  TLC59401_SetDotCorrection(i*3+3, 31);
        TLC59401_SetDotCorrection(i*3+17, 31);
  TLC59401_SetDotCorrection(i*3+18, 63);
  TLC59401_SetDotCorrection(i*3+19, 31);
 }


    TLC59401_SendDotCorrection();


    for(i = 0; i < TLC59401_CHANNELS; i++)
        TLC59401_SetValue(i,0);
    TLC59401_Send();
    Delay(10);


    TIM_Cmd(TLC59401_TMR, ENABLE);
    TIM_CtrlPWMOutputs(TLC59401_TMR, ENABLE);

    enableBlank = 1;
}
