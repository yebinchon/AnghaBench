
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ TAFCR; } ;


 int IS_RTC_TAMPER_PIN (scalar_t__) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_TAFCR_TAMPINSEL ;
 int assert_param (int ) ;

void RTC_TamperPinSelection(uint32_t RTC_TamperPin)
{

  assert_param(IS_RTC_TAMPER_PIN(RTC_TamperPin));

  RTC->TAFCR &= (uint32_t)~(RTC_TAFCR_TAMPINSEL);
  RTC->TAFCR |= (uint32_t)(RTC_TamperPin);
}
