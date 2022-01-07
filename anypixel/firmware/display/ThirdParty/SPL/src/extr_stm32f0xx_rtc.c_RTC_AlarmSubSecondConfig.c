
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int WPR; int ALRMASSR; } ;


 int IS_RTC_ALARM (int) ;
 int IS_RTC_ALARM_SUB_SECOND_MASK (scalar_t__) ;
 int IS_RTC_ALARM_SUB_SECOND_VALUE (int) ;
 TYPE_1__* RTC ;
 int assert_param (int ) ;

void RTC_AlarmSubSecondConfig(uint32_t RTC_Alarm, uint32_t RTC_AlarmSubSecondValue, uint8_t RTC_AlarmSubSecondMask)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RTC_ALARM(RTC_Alarm));
  assert_param(IS_RTC_ALARM_SUB_SECOND_VALUE(RTC_AlarmSubSecondValue));
  assert_param(IS_RTC_ALARM_SUB_SECOND_MASK(RTC_AlarmSubSecondMask));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  tmpreg = (uint32_t) (((uint32_t)(RTC_AlarmSubSecondValue)) | ((uint32_t)(RTC_AlarmSubSecondMask) << 24));


  RTC->ALRMASSR = tmpreg;


  RTC->WPR = 0xFF;

}
