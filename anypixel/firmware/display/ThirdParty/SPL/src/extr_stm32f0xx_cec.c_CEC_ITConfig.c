
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int IER; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* CEC ;
 scalar_t__ DISABLE ;
 int IS_CEC_IT (int ) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CEC_ITConfig(uint16_t CEC_IT, FunctionalState NewState)
{
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  assert_param(IS_CEC_IT(CEC_IT));

  if (NewState != DISABLE)
  {

    CEC->IER |= CEC_IT;
  }
  else
  {
    CEC_IT =~CEC_IT;

    CEC->IER &= CEC_IT;
  }
}
