
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int SR; } ;
typedef scalar_t__ FlagStatus ;


 int IS_RNG_GET_FLAG (int) ;
 scalar_t__ RESET ;
 TYPE_1__* RNG ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus RNG_GetFlagStatus(uint8_t RNG_FLAG)
{
  FlagStatus bitstatus = RESET;

  assert_param(IS_RNG_GET_FLAG(RNG_FLAG));


  if ((RNG->SR & RNG_FLAG) != (uint8_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }

  return bitstatus;
}
