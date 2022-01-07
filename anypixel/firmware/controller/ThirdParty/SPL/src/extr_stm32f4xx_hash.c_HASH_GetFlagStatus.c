
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int CR; int SR; } ;
typedef scalar_t__ FlagStatus ;


 TYPE_1__* HASH ;
 int HASH_FLAG_DINNE ;
 int IS_HASH_GET_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus HASH_GetFlagStatus(uint16_t HASH_FLAG)
{
  FlagStatus bitstatus = RESET;
  uint32_t tempreg = 0;


  assert_param(IS_HASH_GET_FLAG(HASH_FLAG));


  if ((HASH_FLAG & HASH_FLAG_DINNE) != (uint16_t)RESET )
  {
    tempreg = HASH->CR;
  }
  else
  {
    tempreg = HASH->SR;
  }


  if ((tempreg & HASH_FLAG) != (uint16_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
