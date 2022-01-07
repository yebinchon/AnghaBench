
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* CRS ;
 scalar_t__ DISABLE ;
 int IS_CRS_IT (int ) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CRS_ITConfig(uint32_t CRS_IT, FunctionalState NewState)
{

  assert_param(IS_CRS_IT(CRS_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {
    CRS->CR |= CRS_IT;
  }
  else
  {
    CRS->CR &= ~CRS_IT;
  }
}
