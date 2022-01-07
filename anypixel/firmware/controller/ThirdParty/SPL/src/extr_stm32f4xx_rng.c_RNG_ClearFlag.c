
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int SR; } ;


 int IS_RNG_CLEAR_FLAG (scalar_t__) ;
 TYPE_1__* RNG ;
 int assert_param (int ) ;

void RNG_ClearFlag(uint8_t RNG_FLAG)
{

  assert_param(IS_RNG_CLEAR_FLAG(RNG_FLAG));

  RNG->SR = ~(uint32_t)(((uint32_t)RNG_FLAG) << 4);
}
