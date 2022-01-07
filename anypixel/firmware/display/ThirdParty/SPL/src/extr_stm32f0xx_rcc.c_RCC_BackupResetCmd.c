
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int BDCR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 TYPE_1__* RCC ;
 int RCC_BDCR_BDRST ;
 int assert_param (int ) ;

void RCC_BackupResetCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {
    RCC->BDCR |= RCC_BDCR_BDRST;
  }
  else
  {
    RCC->BDCR &= ~RCC_BDCR_BDRST;
  }
}
