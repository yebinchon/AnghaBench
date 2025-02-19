
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int MACPMTCSR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* ETH ;
 int IS_ETH_PMT_GET_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus ETH_GetPMTFlagStatus(uint32_t ETH_PMT_FLAG)
{
  FlagStatus bitstatus = RESET;

  assert_param(IS_ETH_PMT_GET_FLAG(ETH_PMT_FLAG));

  if ((ETH->MACPMTCSR & ETH_PMT_FLAG) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
