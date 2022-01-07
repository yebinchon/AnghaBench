
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int DMAOMR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* ETH ;
 int ETH_DMAOMR_FTF ;
 scalar_t__ RESET ;
 scalar_t__ SET ;

FlagStatus ETH_GetFlushTransmitFIFOStatus(void)
{
  FlagStatus bitstatus = RESET;
  if ((ETH->DMAOMR & ETH_DMAOMR_FTF) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
