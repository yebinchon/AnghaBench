
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int WPR; int ISR; int CR; scalar_t__ SHIFTR; } ;
typedef scalar_t__ ErrorStatus ;


 scalar_t__ ERROR ;
 int IS_RTC_SHIFT_ADD1S (scalar_t__) ;
 int IS_RTC_SHIFT_SUBFS (scalar_t__) ;
 int RESET ;
 TYPE_1__* RTC ;
 int RTC_CR_REFCKON ;
 int RTC_ISR_SHPF ;
 scalar_t__ RTC_WaitForSynchro () ;
 scalar_t__ SHPF_TIMEOUT ;
 scalar_t__ SUCCESS ;
 int assert_param (int ) ;

ErrorStatus RTC_SynchroShiftConfig(uint32_t RTC_ShiftAdd1S, uint32_t RTC_ShiftSubFS)
{
  ErrorStatus status = ERROR;
  uint32_t shpfcount = 0;


  assert_param(IS_RTC_SHIFT_ADD1S(RTC_ShiftAdd1S));
  assert_param(IS_RTC_SHIFT_SUBFS(RTC_ShiftSubFS));


  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;


  if ((RTC->ISR & RTC_ISR_SHPF) != RESET)
  {

    while (((RTC->ISR & RTC_ISR_SHPF) != RESET) && (shpfcount != SHPF_TIMEOUT))
    {
      shpfcount++;
    }
  }


  if ((RTC->ISR & RTC_ISR_SHPF) == RESET)
  {

    if((RTC->CR & RTC_CR_REFCKON) == RESET)
    {

      RTC->SHIFTR = (uint32_t)(uint32_t)(RTC_ShiftSubFS) | (uint32_t)(RTC_ShiftAdd1S);

      if(RTC_WaitForSynchro() == ERROR)
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
      status = ERROR;
    }
  }
  else
  {
    status = ERROR;
  }


  RTC->WPR = 0xFF;

  return (ErrorStatus)(status);
}
