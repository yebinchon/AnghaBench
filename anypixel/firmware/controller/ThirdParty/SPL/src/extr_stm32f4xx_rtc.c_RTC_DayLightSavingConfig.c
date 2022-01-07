
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int WPR; int CR; } ;


 int IS_RTC_DAYLIGHT_SAVING (int) ;
 int IS_RTC_STORE_OPERATION (int) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_CR_BCK ;
 int assert_param (int ) ;

void RTC_DayLightSavingConfig(uint32_t RTC_DayLightSaving, uint32_t RTC_StoreOperation)
{

  assert_param(IS_RTC_DAYLIGHT_SAVING(RTC_DayLightSaving));
  assert_param(IS_RTC_STORE_OPERATION(RTC_StoreOperation));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  RTC->CR &= (uint32_t)~(RTC_CR_BCK);


  RTC->CR |= (uint32_t)(RTC_DayLightSaving | RTC_StoreOperation);


  RTC->WPR = 0xFF;
}
