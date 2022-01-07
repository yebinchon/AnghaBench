
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ IER; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* DCMI ;
 scalar_t__ DISABLE ;
 int IS_DCMI_CONFIG_IT (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DCMI_ITConfig(uint16_t DCMI_IT, FunctionalState NewState)
{

  assert_param(IS_DCMI_CONFIG_IT(DCMI_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DCMI->IER |= DCMI_IT;
  }
  else
  {

    DCMI->IER &= (uint16_t)(~DCMI_IT);
  }
}
