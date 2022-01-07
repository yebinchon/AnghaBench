
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ MACIMR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* ETH ;
 int IS_ETH_MAC_IT (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ETH_MACITConfig(uint32_t ETH_MAC_IT, FunctionalState NewState)
{

  assert_param(IS_ETH_MAC_IT(ETH_MAC_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    ETH->MACIMR &= (~(uint32_t)ETH_MAC_IT);
  }
  else
  {

    ETH->MACIMR |= ETH_MAC_IT;
  }
}
