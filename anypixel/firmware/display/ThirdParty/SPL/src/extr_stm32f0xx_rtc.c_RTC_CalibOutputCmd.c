
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int WPR; int CR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_CR_COE ;
 int assert_param (int ) ;

void RTC_CalibOutputCmd(FunctionalState NewState)
{

  assert_param(IS_FUNCTIONAL_STATE(NewState));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  if (NewState != DISABLE)
  {

    RTC->CR |= (uint32_t)RTC_CR_COE;
  }
  else
  {

    RTC->CR &= (uint32_t)~RTC_CR_COE;
  }


  RTC->WPR = 0xFF;
}
