
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int DMASR; } ;
typedef scalar_t__ ITStatus ;


 TYPE_1__* ETH ;
 int IS_ETH_DMA_GET_IT (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

ITStatus ETH_GetDMAITStatus(uint32_t ETH_DMA_IT)
{
  ITStatus bitstatus = RESET;

  assert_param(IS_ETH_DMA_GET_IT(ETH_DMA_IT));
  if ((ETH->DMASR & ETH_DMA_IT) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
