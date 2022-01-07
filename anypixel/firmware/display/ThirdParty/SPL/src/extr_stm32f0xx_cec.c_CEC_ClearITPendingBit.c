
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ISR; } ;


 TYPE_1__* CEC ;
 int IS_CEC_IT (int ) ;
 int assert_param (int ) ;

void CEC_ClearITPendingBit(uint16_t CEC_IT)
{
  assert_param(IS_CEC_IT(CEC_IT));


  CEC->ISR = CEC_IT;
}
