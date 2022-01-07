
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MMCCR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* ETH ;
 int ETH_MMCCR_CSR ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ETH_MMCCounterRolloverCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    ETH->MMCCR &= ~ETH_MMCCR_CSR;
  }
  else
  {

    ETH->MMCCR |= ETH_MMCCR_CSR;
  }
}
