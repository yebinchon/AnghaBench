
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 TYPE_1__* CEC ;
 int IS_CEC_ADDRESS (int) ;
 int assert_param (int ) ;

void CEC_OwnAddressConfig(uint8_t CEC_OwnAddress)
{
  uint32_t tmp =0x00;

  assert_param(IS_CEC_ADDRESS(CEC_OwnAddress));
  tmp = 1 <<(CEC_OwnAddress + 16);

  CEC->CFGR |= tmp;
}
