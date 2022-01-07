
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ SR; } ;


 int IS_RNG_IT (scalar_t__) ;
 TYPE_1__* RNG ;
 int assert_param (int ) ;

void RNG_ClearITPendingBit(uint8_t RNG_IT)
{

  assert_param(IS_RNG_IT(RNG_IT));


  RNG->SR = (uint8_t)~RNG_IT;
}
