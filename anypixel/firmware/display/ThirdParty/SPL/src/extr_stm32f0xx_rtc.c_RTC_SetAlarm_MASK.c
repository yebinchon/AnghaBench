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
struct TYPE_7__ {scalar_t__ CR; int WPR; scalar_t__ ALRMAR; } ;
struct TYPE_5__ {scalar_t__ RTC_Hours; int RTC_H12; scalar_t__ RTC_Minutes; scalar_t__ RTC_Seconds; } ;
struct TYPE_6__ {scalar_t__ RTC_AlarmDateWeekDaySel; scalar_t__ RTC_AlarmDateWeekDay; scalar_t__ RTC_AlarmMask; TYPE_1__ RTC_AlarmTime; } ;
typedef  TYPE_2__ RTC_AlarmTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ RESET ; 
 TYPE_4__* RTC ; 
 scalar_t__ RTC_AlarmDateWeekDaySel_Date ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ RTC_CR_FMT ; 
 scalar_t__ RTC_Format_BIN ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC13(FUNC5(RTC_Format));
  FUNC13(FUNC0(RTC_Alarm));
  FUNC13(FUNC4(RTC_AlarmStruct->RTC_AlarmMask));
  FUNC13(FUNC2(RTC_AlarmStruct->RTC_AlarmDateWeekDaySel));

  if (RTC_Format == RTC_Format_BIN)
  {
    if ((RTC->CR & RTC_CR_FMT) != (uint32_t)RESET)
    {
      FUNC13(FUNC7(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours));
      FUNC13(FUNC6(RTC_AlarmStruct->RTC_AlarmTime.RTC_H12));
    } 
    else
    {
      RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = 0x00;
      FUNC13(FUNC8(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours));
    }
    FUNC13(FUNC9(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes));
    FUNC13(FUNC10(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds));
    
    if(RTC_AlarmStruct->RTC_AlarmDateWeekDaySel == RTC_AlarmDateWeekDaySel_Date)
    {
      FUNC13(FUNC1(RTC_AlarmStruct->RTC_AlarmDateWeekDay));
    }
    else
    {
      FUNC13(FUNC3(RTC_AlarmStruct->RTC_AlarmDateWeekDay));
    }
  }
  else
  {
    if ((RTC->CR & RTC_CR_FMT) != (uint32_t)RESET)
    {
      tmpreg = FUNC11(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours);
      FUNC13(FUNC7(tmpreg));
      FUNC13(FUNC6(RTC_AlarmStruct->RTC_AlarmTime.RTC_H12));
    } 
    else
    {
      RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = 0x00;
      FUNC13(FUNC8(FUNC11(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours)));
    }
    
    FUNC13(FUNC9(FUNC11(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes)));
    FUNC13(FUNC10(FUNC11(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds)));
    
    if(RTC_AlarmStruct->RTC_AlarmDateWeekDaySel == RTC_AlarmDateWeekDaySel_Date)
    {
      tmpreg = FUNC11(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
      FUNC13(FUNC1(tmpreg));    
    }
    else
    {
      tmpreg = FUNC11(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
      FUNC13(FUNC3(tmpreg));      
    }    
  }

  /* Check the input parameters format */
  if (RTC_Format != RTC_Format_BIN)
  {
    tmpreg = (((uint32_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) << 16) | \
              ((uint32_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) << 8) | \
              ((uint32_t)RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
              ((uint32_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_H12) << 16) | \
              ((uint32_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) << 24) | \
              ((uint32_t)RTC_AlarmStruct->RTC_AlarmDateWeekDaySel) | \
              ((uint32_t)RTC_AlarmStruct->RTC_AlarmMask)); 
  }  
  else
  {
    tmpreg = (((uint32_t)FUNC12(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) << 16) | \
              ((uint32_t)FUNC12(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) << 8) | \
              ((uint32_t)FUNC12(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds)) | \
              ((uint32_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_H12) << 16) | \
              ((uint32_t)FUNC12(RTC_AlarmStruct->RTC_AlarmDateWeekDay) << 24) | \
              ((uint32_t)RTC_AlarmStruct->RTC_AlarmDateWeekDaySel) | \
              ((uint32_t)RTC_AlarmStruct->RTC_AlarmMask)); 
  }

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  /* Configure the Alarm register */
  RTC->ALRMAR = (uint32_t)tmpreg;

  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF;
}