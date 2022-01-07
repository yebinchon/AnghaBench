
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RTC_Date; scalar_t__ RTC_Year; int RTC_Month; int RTC_WeekDay; } ;
typedef TYPE_1__ RTC_DateTypeDef ;


 int RTC_Month_January ;
 int RTC_Weekday_Monday ;

void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct)
{

  RTC_DateStruct->RTC_WeekDay = RTC_Weekday_Monday;
  RTC_DateStruct->RTC_Date = 1;
  RTC_DateStruct->RTC_Month = RTC_Month_January;
  RTC_DateStruct->RTC_Year = 0;
}
