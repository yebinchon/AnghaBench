
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CR; } ;


 TYPE_1__* CRC ;
 scalar_t__ CRC_CR_POLSIZE ;
 int IS_CRC_POL_SIZE (scalar_t__) ;
 int assert_param (int ) ;

void CRC_PolynomialSizeSelect(uint32_t CRC_PolSize)
{
  uint32_t tmpcr = 0;


  assert_param(IS_CRC_POL_SIZE(CRC_PolSize));


  tmpcr = CRC->CR;


  tmpcr &= (uint32_t)~((uint32_t)CRC_CR_POLSIZE);

  tmpcr |= (uint32_t)CRC_PolSize;


  CRC->CR = (uint32_t)tmpcr;
}
