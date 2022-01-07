
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int DR; } ;
struct TYPE_4__ {void* RTC_Date; void* RTC_Month; void* RTC_Year; void* RTC_WeekDay; } ;
typedef TYPE_1__ RTC_DateTypeDef ;


 int IS_RTC_FORMAT (int) ;
 TYPE_3__* RTC ;
 scalar_t__ RTC_Bcd2ToByte (void*) ;
 int RTC_DR_DT ;
 int RTC_DR_DU ;
 int RTC_DR_MT ;
 int RTC_DR_MU ;
 int RTC_DR_RESERVED_MASK ;
 int RTC_DR_WDU ;
 int RTC_DR_YT ;
 int RTC_DR_YU ;
 int RTC_Format_BIN ;
 int assert_param (int ) ;

void RTC_GetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RTC_FORMAT(RTC_Format));


  tmpreg = (uint32_t)(RTC->DR & RTC_DR_RESERVED_MASK);


  RTC_DateStruct->RTC_Year = (uint8_t)((tmpreg & (RTC_DR_YT | RTC_DR_YU)) >> 16);
  RTC_DateStruct->RTC_Month = (uint8_t)((tmpreg & (RTC_DR_MT | RTC_DR_MU)) >> 8);
  RTC_DateStruct->RTC_Date = (uint8_t)(tmpreg & (RTC_DR_DT | RTC_DR_DU));
  RTC_DateStruct->RTC_WeekDay = (uint8_t)((tmpreg & (RTC_DR_WDU)) >> 13);


  if (RTC_Format == RTC_Format_BIN)
  {

    RTC_DateStruct->RTC_Year = (uint8_t)RTC_Bcd2ToByte(RTC_DateStruct->RTC_Year);
    RTC_DateStruct->RTC_Month = (uint8_t)RTC_Bcd2ToByte(RTC_DateStruct->RTC_Month);
    RTC_DateStruct->RTC_Date = (uint8_t)RTC_Bcd2ToByte(RTC_DateStruct->RTC_Date);
  }
}
