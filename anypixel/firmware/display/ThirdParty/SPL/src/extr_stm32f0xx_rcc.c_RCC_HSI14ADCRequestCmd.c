
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR2; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 TYPE_1__* RCC ;
 int RCC_CR2_HSI14DIS ;
 int assert_param (int ) ;

void RCC_HSI14ADCRequestCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {
    RCC->CR2 &= ~RCC_CR2_HSI14DIS;
  }
  else
  {
    RCC->CR2 |= RCC_CR2_HSI14DIS;
  }
}
