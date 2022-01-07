
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;


 int IS_PWR_CLEAR_FLAG (int) ;
 TYPE_1__* PWR ;
 int assert_param (int ) ;

void PWR_ClearFlag(uint32_t PWR_FLAG)
{

  assert_param(IS_PWR_CLEAR_FLAG(PWR_FLAG));

  PWR->CR |= PWR_FLAG << 2;
}
