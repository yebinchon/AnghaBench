
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int SR; } ;


 TYPE_1__* DAC ;
 int IS_DAC_CHANNEL (int) ;
 int IS_DAC_IT (int) ;
 int assert_param (int ) ;

void DAC_ClearITPendingBit(uint32_t DAC_Channel, uint32_t DAC_IT)
{

  assert_param(IS_DAC_CHANNEL(DAC_Channel));
  assert_param(IS_DAC_IT(DAC_IT));


  DAC->SR = (DAC_IT << DAC_Channel);
}
