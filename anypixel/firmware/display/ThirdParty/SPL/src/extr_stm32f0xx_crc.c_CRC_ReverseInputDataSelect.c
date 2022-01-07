
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CR; } ;


 TYPE_1__* CRC ;
 scalar_t__ CRC_CR_REV_IN ;
 int IS_CRC_REVERSE_INPUT_DATA (scalar_t__) ;
 int assert_param (int ) ;

void CRC_ReverseInputDataSelect(uint32_t CRC_ReverseInputData)
{
  uint32_t tmpcr = 0;


  assert_param(IS_CRC_REVERSE_INPUT_DATA(CRC_ReverseInputData));


  tmpcr = CRC->CR;


  tmpcr &= (uint32_t)~((uint32_t)CRC_CR_REV_IN);

  tmpcr |= (uint32_t)CRC_ReverseInputData;


  CRC->CR = (uint32_t)tmpcr;
}
