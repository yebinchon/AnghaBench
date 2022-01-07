
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CSR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* COMP ;
 scalar_t__ COMP_CSR_COMP1SW1 ;
 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void COMP_SwitchCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    COMP->CSR |= (uint32_t) (COMP_CSR_COMP1SW1);
  }
  else
  {

    COMP->CSR &= (uint32_t)(~COMP_CSR_COMP1SW1);
  }
}
