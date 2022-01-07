
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CR; int BDCR; int CSR; } ;
typedef scalar_t__ FlagStatus ;


 int FLAG_MASK ;
 int IS_RCC_FLAG (int) ;
 TYPE_1__* RCC ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG)
{
  uint32_t tmp = 0;
  uint32_t statusreg = 0;
  FlagStatus bitstatus = RESET;


  assert_param(IS_RCC_FLAG(RCC_FLAG));


  tmp = RCC_FLAG >> 5;
  if (tmp == 1)
  {
    statusreg = RCC->CR;
  }
  else if (tmp == 2)
  {
    statusreg = RCC->BDCR;
  }
  else
  {
    statusreg = RCC->CSR;
  }


  tmp = RCC_FLAG & FLAG_MASK;
  if ((statusreg & ((uint32_t)1 << tmp)) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }

  return bitstatus;
}
