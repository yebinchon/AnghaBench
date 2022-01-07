
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int WPR; int PRER; int CR; } ;
struct TYPE_4__ {int RTC_AsynchPrediv; scalar_t__ RTC_SynchPrediv; scalar_t__ RTC_HourFormat; } ;
typedef TYPE_1__ RTC_InitTypeDef ;
typedef scalar_t__ ErrorStatus ;


 scalar_t__ ERROR ;
 int IS_RTC_ASYNCH_PREDIV (int) ;
 int IS_RTC_HOUR_FORMAT (scalar_t__) ;
 int IS_RTC_SYNCH_PREDIV (scalar_t__) ;
 TYPE_3__* RTC ;
 scalar_t__ RTC_CR_FMT ;
 scalar_t__ RTC_EnterInitMode () ;
 int RTC_ExitInitMode () ;
 scalar_t__ SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct)
{
  ErrorStatus status = ERROR;


  assert_param(IS_RTC_HOUR_FORMAT(RTC_InitStruct->RTC_HourFormat));
  assert_param(IS_RTC_ASYNCH_PREDIV(RTC_InitStruct->RTC_AsynchPrediv));
  assert_param(IS_RTC_SYNCH_PREDIV(RTC_InitStruct->RTC_SynchPrediv));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if (RTC_EnterInitMode() == ERROR)
  {
    status = ERROR;
  }
  else
  {

    RTC->CR &= ((uint32_t)~(RTC_CR_FMT));

    RTC->CR |= ((uint32_t)(RTC_InitStruct->RTC_HourFormat));


    RTC->PRER = (uint32_t)(RTC_InitStruct->RTC_SynchPrediv);
    RTC->PRER |= (uint32_t)(RTC_InitStruct->RTC_AsynchPrediv << 16);


    RTC_ExitInitMode();

    status = SUCCESS;
  }

  RTC->WPR = 0xFF;

  return status;
}
