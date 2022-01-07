
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SWTRIGR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* DAC ;
 scalar_t__ DISABLE ;
 int DUAL_SWTRIG_RESET ;
 int DUAL_SWTRIG_SET ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DAC_DualSoftwareTriggerCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DAC->SWTRIGR |= DUAL_SWTRIG_SET;
  }
  else
  {

    DAC->SWTRIGR &= DUAL_SWTRIG_RESET;
  }
}
