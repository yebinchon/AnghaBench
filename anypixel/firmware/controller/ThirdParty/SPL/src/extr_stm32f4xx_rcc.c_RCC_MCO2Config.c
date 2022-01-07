
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 int CFGR_MCO2_RESET_MASK ;
 int IS_RCC_MCO2DIV (int) ;
 int IS_RCC_MCO2SOURCE (int) ;
 TYPE_1__* RCC ;
 int assert_param (int ) ;

void RCC_MCO2Config(uint32_t RCC_MCO2Source, uint32_t RCC_MCO2Div)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_MCO2SOURCE(RCC_MCO2Source));
  assert_param(IS_RCC_MCO2DIV(RCC_MCO2Div));

  tmpreg = RCC->CFGR;


  tmpreg &= CFGR_MCO2_RESET_MASK;


  tmpreg |= RCC_MCO2Source | RCC_MCO2Div;


  RCC->CFGR = tmpreg;
}
