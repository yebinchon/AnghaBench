#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int WPR; scalar_t__ DR; } ;
struct TYPE_4__ {int RTC_Month; scalar_t__ RTC_Year; scalar_t__ RTC_Date; scalar_t__ RTC_WeekDay; } ;
typedef  TYPE_1__ RTC_DateTypeDef ;
typedef  scalar_t__ ErrorStatus ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_3__* RTC ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ RTC_DR_RESERVED_MASK ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ RTC_Format_BIN ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ErrorStatus FUNC11(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct)
{
  uint32_t tmpreg = 0;
  ErrorStatus status = ERROR;
  
  /* Check the parameters */
  FUNC10(FUNC1(RTC_Format));

  if ((RTC_Format == RTC_Format_BIN) && ((RTC_DateStruct->RTC_Month & 0x10) == 0x10))
  {
    RTC_DateStruct->RTC_Month = (RTC_DateStruct->RTC_Month & (uint32_t)~(0x10)) + 0x0A;
  }  
  if (RTC_Format == RTC_Format_BIN)
  {
    FUNC10(FUNC4(RTC_DateStruct->RTC_Year));
    FUNC10(FUNC2(RTC_DateStruct->RTC_Month));
    FUNC10(FUNC0(RTC_DateStruct->RTC_Date));
  }
  else
  {
    FUNC10(FUNC4(FUNC5(RTC_DateStruct->RTC_Year)));
    tmpreg = FUNC5(RTC_DateStruct->RTC_Month);
    FUNC10(FUNC2(tmpreg));
    tmpreg = FUNC5(RTC_DateStruct->RTC_Date);
    FUNC10(FUNC0(tmpreg));
  }
  FUNC10(FUNC3(RTC_DateStruct->RTC_WeekDay));

  /* Check the input parameters format */
  if (RTC_Format != RTC_Format_BIN)
  {
    tmpreg = ((((uint32_t)RTC_DateStruct->RTC_Year) << 16) | \
              (((uint32_t)RTC_DateStruct->RTC_Month) << 8) | \
              ((uint32_t)RTC_DateStruct->RTC_Date) | \
              (((uint32_t)RTC_DateStruct->RTC_WeekDay) << 13)); 
  }  
  else
  {
    tmpreg = (((uint32_t)FUNC6(RTC_DateStruct->RTC_Year) << 16) | \
              ((uint32_t)FUNC6(RTC_DateStruct->RTC_Month) << 8) | \
              ((uint32_t)FUNC6(RTC_DateStruct->RTC_Date)) | \
              ((uint32_t)RTC_DateStruct->RTC_WeekDay << 13));
  }

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  /* Set Initialization mode */
  if (FUNC7() == ERROR)
  {
    status = ERROR;
  } 
  else
  {
    /* Set the RTC_DR register */
    RTC->DR = (uint32_t)(tmpreg & RTC_DR_RESERVED_MASK);

    /* Exit Initialization mode */
    FUNC8(); 

    if(FUNC9() == ERROR)
    {
      status = ERROR;
    }
    else
    {
      status = SUCCESS;
    }
  }
  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF;   
  
  return status;
}