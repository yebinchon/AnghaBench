
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int NVIC_IRQChannelCmd; scalar_t__ NVIC_IRQChannelPriority; int NVIC_IRQChannel; } ;
struct TYPE_12__ {int TIM_ICFilter; int TIM_ICPrescaler; int TIM_ICSelection; int TIM_ICPolarity; int TIM_Channel; } ;
struct TYPE_11__ {int TIM_Pulse; int TIM_OCNIdleState; int TIM_OCIdleState; int TIM_OCNPolarity; int TIM_OCPolarity; int TIM_OutputNState; int TIM_OutputState; int TIM_OCMode; } ;
struct TYPE_10__ {int TIM_Prescaler; int TIM_Period; scalar_t__ TIM_RepetitionCounter; void* TIM_CounterMode; int TIM_ClockDivision; } ;
typedef TYPE_1__ TIM_TimeBaseInitTypeDef ;
typedef TYPE_2__ TIM_OCInitTypeDef ;
typedef TYPE_3__ TIM_ICInitTypeDef ;
typedef TYPE_4__ NVIC_InitTypeDef ;


 int CONFIG_pins (int ,int ) ;
 int ENABLE ;
 int FAN_POWER_AHB ;
 int FAN_POWER_APB1 ;
 int FAN_POWER_APB2 ;
 int NVIC_Init (TYPE_4__*) ;
 int PWM_PINS_NUM ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 int RCC_APB1PeriphClockCmd (int ,int ) ;
 int RCC_APB2PeriphClockCmd (int ,int ) ;
 int TIM16 ;
 int TIM3 ;
 int TIM3_IRQn ;
 int TIM_CKD_DIV1 ;
 int TIM_CKD_DIV4 ;
 int TIM_Channel_1 ;
 int TIM_Cmd (int ,int ) ;
 void* TIM_CounterMode_Up ;
 int TIM_CtrlPWMOutputs (int ,int ) ;
 int TIM_ICInit (int ,TYPE_3__*) ;
 int TIM_ICPSC_DIV1 ;
 int TIM_ICPolarity_Rising ;
 int TIM_ICSelection_DirectTI ;
 int TIM_ITConfig (int ,int ,int ) ;
 int TIM_IT_CC1 ;
 int TIM_OC1Init (int ,TYPE_2__*) ;
 int TIM_OCIdleState_Set ;
 int TIM_OCMode_PWM1 ;
 int TIM_OCNIdleState_Reset ;
 int TIM_OCNPolarity_High ;
 int TIM_OCPolarity_High ;
 int TIM_OutputNState_Disable ;
 int TIM_OutputState_Enable ;
 int TIM_TimeBaseInit (int ,TYPE_1__*) ;
 int TIM_TimeBaseStructInit (TYPE_1__*) ;
 int pins_pwm ;

void fan_setup() {
    TIM_TimeBaseInitTypeDef tbis;
    TIM_OCInitTypeDef ocis;
    NVIC_InitTypeDef nvis;
    TIM_ICInitTypeDef icis;


    RCC_AHBPeriphClockCmd(FAN_POWER_AHB, ENABLE);
    RCC_APB1PeriphClockCmd(FAN_POWER_APB1, ENABLE);
 RCC_APB2PeriphClockCmd(FAN_POWER_APB2, ENABLE);

    CONFIG_pins(pins_pwm, PWM_PINS_NUM);


    tbis.TIM_Prescaler = 0;
    tbis.TIM_ClockDivision = TIM_CKD_DIV1;
    tbis.TIM_CounterMode = TIM_CounterMode_Up;
    tbis.TIM_Period = 1920;
    tbis.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM16, &tbis);

    ocis.TIM_OCMode = TIM_OCMode_PWM1;
    ocis.TIM_OutputState = TIM_OutputState_Enable;
    ocis.TIM_OutputNState = TIM_OutputNState_Disable;
    ocis.TIM_Pulse = 1000;
    ocis.TIM_OCPolarity = TIM_OCPolarity_High;
    ocis.TIM_OCNPolarity = TIM_OCNPolarity_High;
    ocis.TIM_OCIdleState = TIM_OCIdleState_Set;
    ocis.TIM_OCNIdleState = TIM_OCNIdleState_Reset;
    TIM_OC1Init(TIM16, &ocis);

    TIM_Cmd(TIM16, ENABLE);
    TIM_CtrlPWMOutputs(TIM16, ENABLE);


    icis.TIM_Channel = TIM_Channel_1;
    icis.TIM_ICPolarity = TIM_ICPolarity_Rising;
    icis.TIM_ICSelection = TIM_ICSelection_DirectTI;
    icis.TIM_ICPrescaler = TIM_ICPSC_DIV1;
    icis.TIM_ICFilter = 0x0;

    TIM_TimeBaseStructInit(&tbis);
    tbis.TIM_Prescaler = 199;
    tbis.TIM_ClockDivision = TIM_CKD_DIV4;
    tbis.TIM_CounterMode = TIM_CounterMode_Up;
    tbis.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM3, &tbis);

    TIM_ICInit(TIM3, &icis);
    TIM_Cmd(TIM3, ENABLE);
    TIM_ITConfig(TIM3, TIM_IT_CC1, ENABLE);

    nvis.NVIC_IRQChannel = TIM3_IRQn;
    nvis.NVIC_IRQChannelPriority = 0;
    nvis.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&nvis);
}
