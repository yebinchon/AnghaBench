
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int WPR; scalar_t__ WUTR; } ;


 int IS_RTC_WAKEUP_COUNTER (scalar_t__) ;
 TYPE_1__* RTC ;
 int assert_param (int ) ;

void RTC_SetWakeUpCounter(uint32_t RTC_WakeUpCounter)
{

  assert_param(IS_RTC_WAKEUP_COUNTER(RTC_WakeUpCounter));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  RTC->WUTR = (uint32_t)RTC_WakeUpCounter;


  RTC->WPR = 0xFF;
}
