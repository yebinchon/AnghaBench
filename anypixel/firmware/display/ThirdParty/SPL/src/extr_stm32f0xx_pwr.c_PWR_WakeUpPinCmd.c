
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CSR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_PWR_WAKEUP_PIN (int ) ;
 TYPE_1__* PWR ;
 int assert_param (int ) ;

void PWR_WakeUpPinCmd(uint32_t PWR_WakeUpPin, FunctionalState NewState)
{

  assert_param(IS_PWR_WAKEUP_PIN(PWR_WakeUpPin));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    PWR->CSR |= PWR_WakeUpPin;
  }
  else
  {

    PWR->CSR &= ~PWR_WakeUpPin;
  }
}
