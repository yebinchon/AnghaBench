
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* DAC ;
 int DAC_CR_EN1 ;
 scalar_t__ DISABLE ;
 int IS_DAC_CHANNEL (int) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState)
{

  assert_param(IS_DAC_CHANNEL(DAC_Channel));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DAC->CR |= (DAC_CR_EN1 << DAC_Channel);
  }
  else
  {

    DAC->CR &= (~(DAC_CR_EN1 << DAC_Channel));
  }
}
