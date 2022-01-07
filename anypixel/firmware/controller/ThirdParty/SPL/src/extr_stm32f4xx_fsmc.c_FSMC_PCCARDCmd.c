
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PCR4; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_1__* FSMC_Bank4 ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int PCR_PBKEN_RESET ;
 int PCR_PBKEN_SET ;
 int assert_param (int ) ;

void FSMC_PCCARDCmd(FunctionalState NewState)
{
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    FSMC_Bank4->PCR4 |= PCR_PBKEN_SET;
  }
  else
  {

    FSMC_Bank4->PCR4 &= PCR_PBKEN_RESET;
  }
}
