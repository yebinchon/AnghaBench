
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ DMASR; } ;


 TYPE_1__* ETH ;
 int IS_ETH_DMA_IT (scalar_t__) ;
 int assert_param (int ) ;

void ETH_DMAClearITPendingBit(uint32_t ETH_DMA_IT)
{

  assert_param(IS_ETH_DMA_IT(ETH_DMA_IT));


  ETH->DMASR = (uint32_t) ETH_DMA_IT;
}
