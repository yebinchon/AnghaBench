
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CCR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* ADC ;
 scalar_t__ ADC_CCR_VREFEN ;
 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ADC_VrefintCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    ADC->CCR |= (uint32_t)ADC_CCR_VREFEN;
  }
  else
  {

    ADC->CCR &= (uint32_t)(~ADC_CCR_VREFEN);
  }
}
