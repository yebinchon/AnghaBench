
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* DAC ;
 scalar_t__ DISABLE ;
 int IS_DAC_CHANNEL (int) ;
 int IS_DAC_IT (int) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DAC_ITConfig(uint32_t DAC_Channel, uint32_t DAC_IT, FunctionalState NewState)
{

  assert_param(IS_DAC_CHANNEL(DAC_Channel));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  assert_param(IS_DAC_IT(DAC_IT));

  if (NewState != DISABLE)
  {

    DAC->CR |= (DAC_IT << DAC_Channel);
  }
  else
  {

    DAC->CR &= (~(uint32_t)(DAC_IT << DAC_Channel));
  }
}
