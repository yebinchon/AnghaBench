
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int AHB2RSTR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_RCC_AHB2_PERIPH (int ) ;
 TYPE_1__* RCC ;
 int assert_param (int ) ;

void RCC_AHB2PeriphResetCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState)
{

  assert_param(IS_RCC_AHB2_PERIPH(RCC_AHB2Periph));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {
    RCC->AHB2RSTR |= RCC_AHB2Periph;
  }
  else
  {
    RCC->AHB2RSTR &= ~RCC_AHB2Periph;
  }
}
