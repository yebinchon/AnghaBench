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
struct TYPE_5__ {scalar_t__ CR; int WPR; scalar_t__ TR; } ;
struct TYPE_4__ {scalar_t__ RTC_Hours; int RTC_H12; scalar_t__ RTC_Minutes; scalar_t__ RTC_Seconds; } ;
typedef  TYPE_1__ RTC_TimeTypeDef ;
typedef  scalar_t__ ErrorStatus ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int RESET ; 
 TYPE_3__* RTC ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int RTC_CR_BYPSHAD ; 
 scalar_t__ RTC_CR_FMT ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ RTC_Format_BIN ; 
 scalar_t__ RTC_TR_RESERVED_MASK ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

ErrorStatus FUNC12(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct)
{
  uint32_t tmpreg = 0;
  ErrorStatus status = ERROR;

  /* Check the parameters */
  FUNC11(FUNC0(RTC_Format));
  
  if (RTC_Format == RTC_Format_BIN)
  {
    if ((RTC->CR & RTC_CR_FMT) != (uint32_t)RESET)
    {
      FUNC11(FUNC2(RTC_TimeStruct->RTC_Hours));
      FUNC11(FUNC1(RTC_TimeStruct->RTC_H12));
    }
    else
    {
      RTC_TimeStruct->RTC_H12 = 0x00;
      FUNC11(FUNC3(RTC_TimeStruct->RTC_Hours));
    }
    FUNC11(FUNC4(RTC_TimeStruct->RTC_Minutes));
    FUNC11(FUNC5(RTC_TimeStruct->RTC_Seconds));
  }
  else
  {
    if ((RTC->CR & RTC_CR_FMT) != (uint32_t)RESET)
    {
      tmpreg = FUNC6(RTC_TimeStruct->RTC_Hours);
      FUNC11(FUNC2(tmpreg));
      FUNC11(FUNC1(RTC_TimeStruct->RTC_H12)); 
    } 
    else
    {
      RTC_TimeStruct->RTC_H12 = 0x00;
      FUNC11(FUNC3(FUNC6(RTC_TimeStruct->RTC_Hours)));
    }
    FUNC11(FUNC4(FUNC6(RTC_TimeStruct->RTC_Minutes)));
    FUNC11(FUNC5(FUNC6(RTC_TimeStruct->RTC_Seconds)));
  }
  
  /* Check the input parameters format */
  if (RTC_Format != RTC_Format_BIN)
  {
    tmpreg = (((uint32_t)(RTC_TimeStruct->RTC_Hours) << 16) | \
             ((uint32_t)(RTC_TimeStruct->RTC_Minutes) << 8) | \
             ((uint32_t)RTC_TimeStruct->RTC_Seconds) | \
             ((uint32_t)(RTC_TimeStruct->RTC_H12) << 16)); 
  }
  else
  {
    tmpreg = (uint32_t)(((uint32_t)FUNC7(RTC_TimeStruct->RTC_Hours) << 16) | \
                   ((uint32_t)FUNC7(RTC_TimeStruct->RTC_Minutes) << 8) | \
                   ((uint32_t)FUNC7(RTC_TimeStruct->RTC_Seconds)) | \
                   (((uint32_t)RTC_TimeStruct->RTC_H12) << 16));
  } 

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  /* Set Initialization mode */
  if (FUNC8() == ERROR)
  {
    status = ERROR;
  } 
  else
  {
    /* Set the RTC_TR register */
    RTC->TR = (uint32_t)(tmpreg & RTC_TR_RESERVED_MASK);

    /* Exit Initialization mode */
    FUNC9(); 

    /* If  RTC_CR_BYPSHAD bit = 0, wait for synchro else this check is not needed */
    if ((RTC->CR & RTC_CR_BYPSHAD) == RESET)
    {
      if (FUNC10() == ERROR)
      {
        status = ERROR;
      }
      else
      {
        status = SUCCESS;
      }
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