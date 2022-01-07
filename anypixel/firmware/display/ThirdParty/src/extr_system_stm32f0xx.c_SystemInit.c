
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CIR; int CR2; int CFGR3; int CFGR2; int CFGR; int CR; } ;


 TYPE_1__* RCC ;
 int SetSysClock () ;

void SystemInit (void)
{

  RCC->CR |= (uint32_t)0x00000001;






  RCC->CFGR &= (uint32_t)0x08FFB80C;



  RCC->CR &= (uint32_t)0xFEF6FFFF;


  RCC->CR &= (uint32_t)0xFFFBFFFF;


  RCC->CFGR &= (uint32_t)0xFFC0FFFF;


  RCC->CFGR2 &= (uint32_t)0xFFFFFFF0;


  RCC->CFGR3 &= (uint32_t)0xFFFFFEAC;


  RCC->CR2 &= (uint32_t)0xFFFFFFFE;


  RCC->CIR = 0x00000000;


  SetSysClock();
}
