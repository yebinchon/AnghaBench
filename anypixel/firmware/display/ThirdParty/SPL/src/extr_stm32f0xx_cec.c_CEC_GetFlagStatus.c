
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ISR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* CEC ;
 int IS_CEC_GET_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus CEC_GetFlagStatus(uint16_t CEC_FLAG)
{
  FlagStatus bitstatus = RESET;

  assert_param(IS_CEC_GET_FLAG(CEC_FLAG));


  if ((CEC->ISR & CEC_FLAG) != (uint16_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
