
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR2; } ;


 int IS_RCC_PREDIV1 (int ) ;
 TYPE_1__* RCC ;
 int RCC_CFGR2_PREDIV1 ;
 int assert_param (int ) ;

void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Div)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_PREDIV1(RCC_PREDIV1_Div));

  tmpreg = RCC->CFGR2;

  tmpreg &= ~(RCC_CFGR2_PREDIV1);

  tmpreg |= RCC_PREDIV1_Div;

  RCC->CFGR2 = tmpreg;
}
