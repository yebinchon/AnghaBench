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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int WPR; int ISR; scalar_t__ CALR; } ;
typedef  int /*<<< orphan*/  ErrorStatus ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ RECALPF_TIMEOUT ; 
 int RESET ; 
 TYPE_1__* RTC ; 
 int RTC_ISR_RECALPF ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ErrorStatus FUNC4(uint32_t RTC_SmoothCalibPeriod,
                                  uint32_t RTC_SmoothCalibPlusPulses,
                                  uint32_t RTC_SmouthCalibMinusPulsesValue)
{
  ErrorStatus status = ERROR;
  uint32_t recalpfcount = 0;

  /* Check the parameters */
  FUNC3(FUNC1(RTC_SmoothCalibPeriod));
  FUNC3(FUNC2(RTC_SmoothCalibPlusPulses));
  FUNC3(FUNC0(RTC_SmouthCalibMinusPulsesValue));

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;
  
  /* check if a calibration is pending*/
  if ((RTC->ISR & RTC_ISR_RECALPF) != RESET)
  {
    /* wait until the Calibration is completed*/
    while (((RTC->ISR & RTC_ISR_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
    {
      recalpfcount++;
    }
  }

  /* check if the calibration pending is completed or if there is no calibration operation at all*/
  if ((RTC->ISR & RTC_ISR_RECALPF) == RESET)
  {
    /* Configure the Smooth calibration settings */
    RTC->CALR = (uint32_t)((uint32_t)RTC_SmoothCalibPeriod | (uint32_t)RTC_SmoothCalibPlusPulses | (uint32_t)RTC_SmouthCalibMinusPulsesValue);

    status = SUCCESS;
  }
  else
  {
    status = ERROR;
  }

  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF;
  
  return (ErrorStatus)(status);
}