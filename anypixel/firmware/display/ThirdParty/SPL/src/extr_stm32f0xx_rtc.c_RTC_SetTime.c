
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ CR; int WPR; scalar_t__ TR; } ;
struct TYPE_4__ {scalar_t__ RTC_Hours; int RTC_H12; scalar_t__ RTC_Minutes; scalar_t__ RTC_Seconds; } ;
typedef TYPE_1__ RTC_TimeTypeDef ;
typedef scalar_t__ ErrorStatus ;


 scalar_t__ ERROR ;
 int IS_RTC_FORMAT (scalar_t__) ;
 int IS_RTC_H12 (int) ;
 int IS_RTC_HOUR12 (scalar_t__) ;
 int IS_RTC_HOUR24 (scalar_t__) ;
 int IS_RTC_MINUTES (scalar_t__) ;
 int IS_RTC_SECONDS (scalar_t__) ;
 int RESET ;
 TYPE_3__* RTC ;
 scalar_t__ RTC_Bcd2ToByte (scalar_t__) ;
 scalar_t__ RTC_ByteToBcd2 (scalar_t__) ;
 int RTC_CR_BYPSHAD ;
 scalar_t__ RTC_CR_FMT ;
 scalar_t__ RTC_EnterInitMode () ;
 int RTC_ExitInitMode () ;
 scalar_t__ RTC_Format_BIN ;
 scalar_t__ RTC_TR_RESERVED_MASK ;
 scalar_t__ RTC_WaitForSynchro () ;
 scalar_t__ SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_SetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct)
{
  uint32_t tmpreg = 0;
  ErrorStatus status = ERROR;


  assert_param(IS_RTC_FORMAT(RTC_Format));

  if (RTC_Format == RTC_Format_BIN)
  {
    if ((RTC->CR & RTC_CR_FMT) != (uint32_t)RESET)
    {
      assert_param(IS_RTC_HOUR12(RTC_TimeStruct->RTC_Hours));
      assert_param(IS_RTC_H12(RTC_TimeStruct->RTC_H12));
    }
    else
    {
      RTC_TimeStruct->RTC_H12 = 0x00;
      assert_param(IS_RTC_HOUR24(RTC_TimeStruct->RTC_Hours));
    }
    assert_param(IS_RTC_MINUTES(RTC_TimeStruct->RTC_Minutes));
    assert_param(IS_RTC_SECONDS(RTC_TimeStruct->RTC_Seconds));
  }
  else
  {
    if ((RTC->CR & RTC_CR_FMT) != (uint32_t)RESET)
    {
      tmpreg = RTC_Bcd2ToByte(RTC_TimeStruct->RTC_Hours);
      assert_param(IS_RTC_HOUR12(tmpreg));
      assert_param(IS_RTC_H12(RTC_TimeStruct->RTC_H12));
    }
    else
    {
      RTC_TimeStruct->RTC_H12 = 0x00;
      assert_param(IS_RTC_HOUR24(RTC_Bcd2ToByte(RTC_TimeStruct->RTC_Hours)));
    }
    assert_param(IS_RTC_MINUTES(RTC_Bcd2ToByte(RTC_TimeStruct->RTC_Minutes)));
    assert_param(IS_RTC_SECONDS(RTC_Bcd2ToByte(RTC_TimeStruct->RTC_Seconds)));
  }


  if (RTC_Format != RTC_Format_BIN)
  {
    tmpreg = (((uint32_t)(RTC_TimeStruct->RTC_Hours) << 16) | ((uint32_t)(RTC_TimeStruct->RTC_Minutes) << 8) | ((uint32_t)RTC_TimeStruct->RTC_Seconds) | ((uint32_t)(RTC_TimeStruct->RTC_H12) << 16));



  }
  else
  {
    tmpreg = (uint32_t)(((uint32_t)RTC_ByteToBcd2(RTC_TimeStruct->RTC_Hours) << 16) | ((uint32_t)RTC_ByteToBcd2(RTC_TimeStruct->RTC_Minutes) << 8) | ((uint32_t)RTC_ByteToBcd2(RTC_TimeStruct->RTC_Seconds)) | (((uint32_t)RTC_TimeStruct->RTC_H12) << 16));



  }


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if (RTC_EnterInitMode() == ERROR)
  {
    status = ERROR;
  }
  else
  {

    RTC->TR = (uint32_t)(tmpreg & RTC_TR_RESERVED_MASK);


    RTC_ExitInitMode();


    if ((RTC->CR & RTC_CR_BYPSHAD) == RESET)
    {
      if (RTC_WaitForSynchro() == ERROR)
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

  RTC->WPR = 0xFF;

  return status;
}
