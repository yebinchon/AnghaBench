
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int IFCR; } ;


 TYPE_1__* DMA1 ;
 int IS_DMA_CLEAR_IT (int ) ;
 int assert_param (int ) ;

void DMA_ClearITPendingBit(uint32_t DMA_IT)
{

  assert_param(IS_DMA_CLEAR_IT(DMA_IT));


  DMA1->IFCR = DMA_IT;
}
