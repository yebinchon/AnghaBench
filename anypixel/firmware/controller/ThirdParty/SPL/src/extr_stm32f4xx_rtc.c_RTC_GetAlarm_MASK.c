#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ ALRMBR; scalar_t__ ALRMAR; } ;
struct TYPE_5__ {void* RTC_Seconds; void* RTC_Minutes; void* RTC_Hours; scalar_t__ RTC_H12; } ;
struct TYPE_6__ {void* RTC_AlarmDateWeekDay; TYPE_1__ RTC_AlarmTime; scalar_t__ RTC_AlarmMask; scalar_t__ RTC_AlarmDateWeekDaySel; } ;
typedef  TYPE_2__ RTC_AlarmTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_4__* RTC ; 
 scalar_t__ RTC_ALRMAR_DT ; 
 scalar_t__ RTC_ALRMAR_DU ; 
 scalar_t__ RTC_ALRMAR_HT ; 
 scalar_t__ RTC_ALRMAR_HU ; 
 scalar_t__ RTC_ALRMAR_MNT ; 
 scalar_t__ RTC_ALRMAR_MNU ; 
 scalar_t__ RTC_ALRMAR_PM ; 
 scalar_t__ RTC_ALRMAR_ST ; 
 scalar_t__ RTC_ALRMAR_SU ; 
 scalar_t__ RTC_ALRMAR_WDSEL ; 
 scalar_t__ RTC_AlarmMask_All ; 
 scalar_t__ RTC_Alarm_A ; 
 void* FUNC2 (void*) ; 
 scalar_t__ RTC_Format_BIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC3(FUNC1(RTC_Format));
  FUNC3(FUNC0(RTC_Alarm)); 

  /* Get the RTC_ALRMxR register */
  if (RTC_Alarm == RTC_Alarm_A)
  {
    tmpreg = (uint32_t)(RTC->ALRMAR);
  }
  else
  {
    tmpreg = (uint32_t)(RTC->ALRMBR);
  }

  /* Fill the structure with the read parameters */
  RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = (uint32_t)((tmpreg & (RTC_ALRMAR_HT | \
                                                     RTC_ALRMAR_HU)) >> 16);
  RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = (uint32_t)((tmpreg & (RTC_ALRMAR_MNT | \
                                                     RTC_ALRMAR_MNU)) >> 8);
  RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = (uint32_t)(tmpreg & (RTC_ALRMAR_ST | \
                                                     RTC_ALRMAR_SU));
  RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = (uint32_t)((tmpreg & RTC_ALRMAR_PM) >> 16);
  RTC_AlarmStruct->RTC_AlarmDateWeekDay = (uint32_t)((tmpreg & (RTC_ALRMAR_DT | RTC_ALRMAR_DU)) >> 24);
  RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = (uint32_t)(tmpreg & RTC_ALRMAR_WDSEL);
  RTC_AlarmStruct->RTC_AlarmMask = (uint32_t)(tmpreg & RTC_AlarmMask_All);

  if (RTC_Format == RTC_Format_BIN)
  {
    RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = FUNC2(RTC_AlarmStruct-> \
                                                        RTC_AlarmTime.RTC_Hours);
    RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = FUNC2(RTC_AlarmStruct-> \
                                                        RTC_AlarmTime.RTC_Minutes);
    RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = FUNC2(RTC_AlarmStruct-> \
                                                        RTC_AlarmTime.RTC_Seconds);
    RTC_AlarmStruct->RTC_AlarmDateWeekDay = FUNC2(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
  }  
}