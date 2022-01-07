
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int WPR; int ISR; scalar_t__ CALR; } ;
typedef int ErrorStatus ;


 int ERROR ;
 int IS_RTC_SMOOTH_CALIB_MINUS (scalar_t__) ;
 int IS_RTC_SMOOTH_CALIB_PERIOD (scalar_t__) ;
 int IS_RTC_SMOOTH_CALIB_PLUS (scalar_t__) ;
 scalar_t__ RECALPF_TIMEOUT ;
 int RESET ;
 TYPE_1__* RTC ;
 int RTC_ISR_RECALPF ;
 int SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_SmoothCalibConfig(uint32_t RTC_SmoothCalibPeriod,
                                  uint32_t RTC_SmoothCalibPlusPulses,
                                  uint32_t RTC_SmouthCalibMinusPulsesValue)
{
  ErrorStatus status = ERROR;
  uint32_t recalpfcount = 0;


  assert_param(IS_RTC_SMOOTH_CALIB_PERIOD(RTC_SmoothCalibPeriod));
  assert_param(IS_RTC_SMOOTH_CALIB_PLUS(RTC_SmoothCalibPlusPulses));
  assert_param(IS_RTC_SMOOTH_CALIB_MINUS(RTC_SmouthCalibMinusPulsesValue));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if ((RTC->ISR & RTC_ISR_RECALPF) != RESET)
  {

    while (((RTC->ISR & RTC_ISR_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
    {
      recalpfcount++;
    }
  }


  if ((RTC->ISR & RTC_ISR_RECALPF) == RESET)
  {

    RTC->CALR = (uint32_t)((uint32_t)RTC_SmoothCalibPeriod | (uint32_t)RTC_SmoothCalibPlusPulses | (uint32_t)RTC_SmouthCalibMinusPulsesValue);

    status = SUCCESS;
  }
  else
  {
    status = ERROR;
  }


  RTC->WPR = 0xFF;

  return (ErrorStatus)(status);
}
