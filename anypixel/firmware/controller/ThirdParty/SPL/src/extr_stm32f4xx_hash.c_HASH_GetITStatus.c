
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int SR; int IMR; } ;
typedef int ITStatus ;


 TYPE_1__* HASH ;
 int IS_HASH_GET_IT (int) ;
 int RESET ;
 int SET ;
 int assert_param (int ) ;

ITStatus HASH_GetITStatus(uint8_t HASH_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t tmpreg = 0;


  assert_param(IS_HASH_GET_IT(HASH_IT));



  tmpreg = HASH->SR;

  if (((HASH->IMR & tmpreg) & HASH_IT) != RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }

  return bitstatus;
}
