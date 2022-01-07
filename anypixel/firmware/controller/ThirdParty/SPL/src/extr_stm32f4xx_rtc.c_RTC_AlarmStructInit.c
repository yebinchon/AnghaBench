
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ RTC_Seconds; scalar_t__ RTC_Minutes; scalar_t__ RTC_Hours; int RTC_H12; } ;
struct TYPE_5__ {int RTC_AlarmDateWeekDay; int RTC_AlarmMask; int RTC_AlarmDateWeekDaySel; TYPE_1__ RTC_AlarmTime; } ;
typedef TYPE_2__ RTC_AlarmTypeDef ;


 int RTC_AlarmDateWeekDaySel_Date ;
 int RTC_AlarmMask_None ;
 int RTC_H12_AM ;

void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct)
{

  RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = RTC_H12_AM;
  RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = 0;
  RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = 0;
  RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = 0;


  RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = RTC_AlarmDateWeekDaySel_Date;
  RTC_AlarmStruct->RTC_AlarmDateWeekDay = 1;


  RTC_AlarmStruct->RTC_AlarmMask = RTC_AlarmMask_None;
}
