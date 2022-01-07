
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CFGR; } ;
typedef scalar_t__ FunctionalState ;


 TYPE_1__* CEC ;
 int CEC_CFGR_LSTN ;
 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CEC_ListenModeCmd(FunctionalState NewState)
{
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    CEC->CFGR |= CEC_CFGR_LSTN;
  }
  else
  {

    CEC->CFGR &= ~CEC_CFGR_LSTN;
  }
}
