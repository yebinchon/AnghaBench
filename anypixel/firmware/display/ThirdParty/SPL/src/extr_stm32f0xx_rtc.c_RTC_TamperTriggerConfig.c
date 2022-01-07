
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ TAFCR; } ;


 int IS_RTC_TAMPER (scalar_t__) ;
 int IS_RTC_TAMPER_TRIGGER (scalar_t__) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_TamperTrigger_RisingEdge ;
 int assert_param (int ) ;

void RTC_TamperTriggerConfig(uint32_t RTC_Tamper, uint32_t RTC_TamperTrigger)
{

  assert_param(IS_RTC_TAMPER(RTC_Tamper));
  assert_param(IS_RTC_TAMPER_TRIGGER(RTC_TamperTrigger));

  if (RTC_TamperTrigger == RTC_TamperTrigger_RisingEdge)
  {

    RTC->TAFCR &= (uint32_t)((uint32_t)~(RTC_Tamper << 1));
  }
  else
  {

    RTC->TAFCR |= (uint32_t)(RTC_Tamper << 1);
  }
}
