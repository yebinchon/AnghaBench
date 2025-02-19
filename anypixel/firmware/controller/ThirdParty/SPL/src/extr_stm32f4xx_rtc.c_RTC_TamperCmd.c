
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ TAFCR; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_RTC_TAMPER (scalar_t__) ;
 TYPE_1__* RTC ;
 int assert_param (int ) ;

void RTC_TamperCmd(uint32_t RTC_Tamper, FunctionalState NewState)
{

  assert_param(IS_RTC_TAMPER(RTC_Tamper));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    RTC->TAFCR |= (uint32_t)RTC_Tamper;
  }
  else
  {

    RTC->TAFCR &= (uint32_t)~RTC_Tamper;
  }
}
