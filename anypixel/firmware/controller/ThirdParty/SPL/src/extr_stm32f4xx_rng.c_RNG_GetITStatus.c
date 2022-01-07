
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int SR; } ;
typedef scalar_t__ ITStatus ;


 int IS_RNG_GET_IT (int) ;
 scalar_t__ RESET ;
 TYPE_1__* RNG ;
 scalar_t__ SET ;
 int assert_param (int ) ;

ITStatus RNG_GetITStatus(uint8_t RNG_IT)
{
  ITStatus bitstatus = RESET;

  assert_param(IS_RNG_GET_IT(RNG_IT));


  if ((RNG->SR & RNG_IT) != (uint8_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }

  return bitstatus;
}
