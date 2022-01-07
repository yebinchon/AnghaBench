
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 TYPE_1__* PWR ;
 scalar_t__ PWR_CR_DBP ;
 int assert_param (int ) ;

void PWR_BackupAccessCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    PWR->CR |= PWR_CR_DBP;
  }
  else
  {

    PWR->CR &= (uint32_t)~((uint32_t)PWR_CR_DBP);
  }
}
