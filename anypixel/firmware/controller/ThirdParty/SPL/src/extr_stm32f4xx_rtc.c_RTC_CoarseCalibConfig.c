
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int WPR; int CALIBR; } ;
typedef scalar_t__ ErrorStatus ;


 scalar_t__ ERROR ;
 int IS_RTC_CALIB_SIGN (int) ;
 int IS_RTC_CALIB_VALUE (int) ;
 TYPE_1__* RTC ;
 scalar_t__ RTC_EnterInitMode () ;
 int RTC_ExitInitMode () ;
 scalar_t__ SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_CoarseCalibConfig(uint32_t RTC_CalibSign, uint32_t Value)
{
  ErrorStatus status = ERROR;


  assert_param(IS_RTC_CALIB_SIGN(RTC_CalibSign));
  assert_param(IS_RTC_CALIB_VALUE(Value));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if (RTC_EnterInitMode() == ERROR)
  {
    status = ERROR;
  }
  else
  {

    RTC->CALIBR = (uint32_t)(RTC_CalibSign | Value);

    RTC_ExitInitMode();

    status = SUCCESS;
  }


  RTC->WPR = 0xFF;

  return status;
}
