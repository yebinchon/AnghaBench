
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_14__ {int TIM_RepetitionCounter; int TIM_Prescaler; int TIM_Period; scalar_t__ TIM_ClockDivision; scalar_t__ TIM_CounterMode; } ;
struct TYPE_13__ {int EGR; int RCR; int PSC; int ARR; scalar_t__ CR1; } ;
typedef TYPE_1__ TIM_TypeDef ;
typedef TYPE_2__ TIM_TimeBaseInitTypeDef ;


 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 int IS_TIM_CKD_DIV (scalar_t__) ;
 int IS_TIM_COUNTER_MODE (scalar_t__) ;
 TYPE_1__* TIM1 ;
 TYPE_1__* TIM15 ;
 TYPE_1__* TIM16 ;
 TYPE_1__* TIM17 ;
 TYPE_1__* TIM2 ;
 TYPE_1__* TIM3 ;
 TYPE_1__* TIM6 ;
 scalar_t__ TIM_CR1_CKD ;
 int TIM_CR1_CMS ;
 int TIM_CR1_DIR ;
 int TIM_PSCReloadMode_Immediate ;
 int assert_param (int ) ;

void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct)
{
  uint16_t tmpcr1 = 0;


  assert_param(IS_TIM_ALL_PERIPH(TIMx));
  assert_param(IS_TIM_COUNTER_MODE(TIM_TimeBaseInitStruct->TIM_CounterMode));
  assert_param(IS_TIM_CKD_DIV(TIM_TimeBaseInitStruct->TIM_ClockDivision));

  tmpcr1 = TIMx->CR1;

  if((TIMx == TIM1) || (TIMx == TIM2) || (TIMx == TIM3))
  {

    tmpcr1 &= (uint16_t)(~((uint16_t)(TIM_CR1_DIR | TIM_CR1_CMS)));
    tmpcr1 |= (uint32_t)TIM_TimeBaseInitStruct->TIM_CounterMode;
  }

  if(TIMx != TIM6)
  {

    tmpcr1 &= (uint16_t)(~((uint16_t)TIM_CR1_CKD));
    tmpcr1 |= (uint32_t)TIM_TimeBaseInitStruct->TIM_ClockDivision;
  }

  TIMx->CR1 = tmpcr1;


  TIMx->ARR = TIM_TimeBaseInitStruct->TIM_Period ;


  TIMx->PSC = TIM_TimeBaseInitStruct->TIM_Prescaler;

  if ((TIMx == TIM1) || (TIMx == TIM15)|| (TIMx == TIM16) || (TIMx == TIM17))
  {

    TIMx->RCR = TIM_TimeBaseInitStruct->TIM_RepetitionCounter;
  }



  TIMx->EGR = TIM_PSCReloadMode_Immediate;
}
