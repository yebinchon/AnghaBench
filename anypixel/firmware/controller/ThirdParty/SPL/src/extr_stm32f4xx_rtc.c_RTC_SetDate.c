
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int WPR; scalar_t__ DR; } ;
struct TYPE_4__ {int RTC_Month; scalar_t__ RTC_Year; scalar_t__ RTC_Date; scalar_t__ RTC_WeekDay; } ;
typedef TYPE_1__ RTC_DateTypeDef ;
typedef scalar_t__ ErrorStatus ;


 scalar_t__ ERROR ;
 int IS_RTC_DATE (scalar_t__) ;
 int IS_RTC_FORMAT (scalar_t__) ;
 int IS_RTC_MONTH (scalar_t__) ;
 int IS_RTC_WEEKDAY (scalar_t__) ;
 int IS_RTC_YEAR (scalar_t__) ;
 TYPE_3__* RTC ;
 scalar_t__ RTC_Bcd2ToByte (scalar_t__) ;
 scalar_t__ RTC_ByteToBcd2 (scalar_t__) ;
 scalar_t__ RTC_DR_RESERVED_MASK ;
 scalar_t__ RTC_EnterInitMode () ;
 int RTC_ExitInitMode () ;
 scalar_t__ RTC_Format_BIN ;
 scalar_t__ RTC_WaitForSynchro () ;
 scalar_t__ SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_SetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct)
{
  uint32_t tmpreg = 0;
  ErrorStatus status = ERROR;


  assert_param(IS_RTC_FORMAT(RTC_Format));

  if ((RTC_Format == RTC_Format_BIN) && ((RTC_DateStruct->RTC_Month & 0x10) == 0x10))
  {
    RTC_DateStruct->RTC_Month = (RTC_DateStruct->RTC_Month & (uint32_t)~(0x10)) + 0x0A;
  }
  if (RTC_Format == RTC_Format_BIN)
  {
    assert_param(IS_RTC_YEAR(RTC_DateStruct->RTC_Year));
    assert_param(IS_RTC_MONTH(RTC_DateStruct->RTC_Month));
    assert_param(IS_RTC_DATE(RTC_DateStruct->RTC_Date));
  }
  else
  {
    assert_param(IS_RTC_YEAR(RTC_Bcd2ToByte(RTC_DateStruct->RTC_Year)));
    tmpreg = RTC_Bcd2ToByte(RTC_DateStruct->RTC_Month);
    assert_param(IS_RTC_MONTH(tmpreg));
    tmpreg = RTC_Bcd2ToByte(RTC_DateStruct->RTC_Date);
    assert_param(IS_RTC_DATE(tmpreg));
  }
  assert_param(IS_RTC_WEEKDAY(RTC_DateStruct->RTC_WeekDay));


  if (RTC_Format != RTC_Format_BIN)
  {
    tmpreg = ((((uint32_t)RTC_DateStruct->RTC_Year) << 16) | (((uint32_t)RTC_DateStruct->RTC_Month) << 8) | ((uint32_t)RTC_DateStruct->RTC_Date) | (((uint32_t)RTC_DateStruct->RTC_WeekDay) << 13));



  }
  else
  {
    tmpreg = (((uint32_t)RTC_ByteToBcd2(RTC_DateStruct->RTC_Year) << 16) | ((uint32_t)RTC_ByteToBcd2(RTC_DateStruct->RTC_Month) << 8) | ((uint32_t)RTC_ByteToBcd2(RTC_DateStruct->RTC_Date)) | ((uint32_t)RTC_DateStruct->RTC_WeekDay << 13));



  }


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if (RTC_EnterInitMode() == ERROR)
  {
    status = ERROR;
  }
  else
  {

    RTC->DR = (uint32_t)(tmpreg & RTC_DR_RESERVED_MASK);


    RTC_ExitInitMode();

    if(RTC_WaitForSynchro() == ERROR)
    {
      status = ERROR;
    }
    else
    {
      status = SUCCESS;
    }
  }

  RTC->WPR = 0xFF;

  return status;
}
