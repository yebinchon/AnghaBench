
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* DCMI ;
 scalar_t__ DCMI_CR_CROP ;
 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DCMI_CROPCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DCMI->CR |= (uint32_t)DCMI_CR_CROP;
  }
  else
  {

    DCMI->CR &= ~(uint32_t)DCMI_CR_CROP;
  }
}
