
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; int PLLCFGR; int CIR; int CR; } ;


 TYPE_1__* RCC ;

void RCC_DeInit(void)
{

  RCC->CR |= (uint32_t)0x00000001;


  RCC->CFGR = 0x00000000;


  RCC->CR &= (uint32_t)0xFEF6FFFF;


  RCC->PLLCFGR = 0x24003010;


  RCC->CR &= (uint32_t)0xFFFBFFFF;


  RCC->CIR = 0x00000000;
}
