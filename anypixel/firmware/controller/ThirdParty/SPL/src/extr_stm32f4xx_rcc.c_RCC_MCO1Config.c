
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 int CFGR_MCO1_RESET_MASK ;
 int IS_RCC_MCO1DIV (int) ;
 int IS_RCC_MCO1SOURCE (int) ;
 TYPE_1__* RCC ;
 int assert_param (int ) ;

void RCC_MCO1Config(uint32_t RCC_MCO1Source, uint32_t RCC_MCO1Div)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_MCO1SOURCE(RCC_MCO1Source));
  assert_param(IS_RCC_MCO1DIV(RCC_MCO1Div));

  tmpreg = RCC->CFGR;


  tmpreg &= CFGR_MCO1_RESET_MASK;


  tmpreg |= RCC_MCO1Source | RCC_MCO1Div;


  RCC->CFGR = tmpreg;
}
