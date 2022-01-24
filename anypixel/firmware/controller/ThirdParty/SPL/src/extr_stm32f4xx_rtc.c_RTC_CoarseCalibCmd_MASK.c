#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int WPR; int /*<<< orphan*/  CR; } ;
typedef  scalar_t__ FunctionalState ;
typedef  scalar_t__ ErrorStatus ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* RTC ; 
 scalar_t__ RTC_CR_DCE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ErrorStatus FUNC4(FunctionalState NewState)
{
  ErrorStatus status = ERROR;
  
  /* Check the parameters */
  FUNC3(FUNC0(NewState));

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;
  
  /* Set Initialization mode */
  if (FUNC1() == ERROR)
  {
    status =  ERROR;
  }
  else
  {
    if (NewState != DISABLE)
    {
      /* Enable the Coarse Calibration */
      RTC->CR |= (uint32_t)RTC_CR_DCE;
    }
    else
    { 
      /* Disable the Coarse Calibration */
      RTC->CR &= (uint32_t)~RTC_CR_DCE;
    }
    /* Exit Initialization mode */
    FUNC2();
    
    status = SUCCESS;
  } 
  
  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF; 
  
  return status;
}