
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int ALRMASSR; } ;


 TYPE_1__* RTC ;
 int RTC_ALRMASSR_SS ;

uint32_t RTC_GetAlarmSubSecond(uint32_t RTC_Alarm)
{
  uint32_t tmpreg = 0;


  tmpreg = (uint32_t)((RTC->ALRMASSR) & RTC_ALRMASSR_SS);

  return (tmpreg);
}
