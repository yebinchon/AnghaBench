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
typedef  int uint32_t ;
struct TYPE_2__ {int WPR; int CALIBR; } ;
typedef  scalar_t__ ErrorStatus ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* RTC ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ErrorStatus FUNC5(uint32_t RTC_CalibSign, uint32_t Value)
{
  ErrorStatus status = ERROR;
   
  /* Check the parameters */
  FUNC4(FUNC0(RTC_CalibSign));
  FUNC4(FUNC1(Value)); 

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  /* Set Initialization mode */
  if (FUNC2() == ERROR)
  {
    status = ERROR;
  } 
  else
  {
    /* Set the coarse calibration value */
    RTC->CALIBR = (uint32_t)(RTC_CalibSign | Value);
    /* Exit Initialization mode */
    FUNC3();
    
    status = SUCCESS;
  } 

  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF; 
  
  return status;
}