
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int WPR; int CR; } ;
typedef scalar_t__ FunctionalState ;
typedef scalar_t__ ErrorStatus ;


 scalar_t__ DISABLE ;
 scalar_t__ ERROR ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 TYPE_1__* RTC ;
 int RTC_CR_REFCKON ;
 scalar_t__ RTC_EnterInitMode () ;
 int RTC_ExitInitMode () ;
 scalar_t__ SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_RefClockCmd(FunctionalState NewState)
{
  ErrorStatus status = ERROR;


  assert_param(IS_FUNCTIONAL_STATE(NewState));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if (RTC_EnterInitMode() == ERROR)
  {
    status = ERROR;
  }
  else
  {
    if (NewState != DISABLE)
    {

      RTC->CR |= RTC_CR_REFCKON;
    }
    else
    {

      RTC->CR &= ~RTC_CR_REFCKON;
    }

    RTC_ExitInitMode();

    status = SUCCESS;
  }


  RTC->WPR = 0xFF;

  return status;
}
