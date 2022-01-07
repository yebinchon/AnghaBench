
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* RTC_SynchPrediv; void* RTC_AsynchPrediv; int RTC_HourFormat; } ;
typedef TYPE_1__ RTC_InitTypeDef ;


 int RTC_HourFormat_24 ;

void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct)
{

  RTC_InitStruct->RTC_HourFormat = RTC_HourFormat_24;


  RTC_InitStruct->RTC_AsynchPrediv = (uint32_t)0x7F;


  RTC_InitStruct->RTC_SynchPrediv = (uint32_t)0xFF;
}
