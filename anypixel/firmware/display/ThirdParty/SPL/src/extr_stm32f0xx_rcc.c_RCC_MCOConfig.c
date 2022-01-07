
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 int IS_RCC_MCO_PRESCALER (int) ;
 int IS_RCC_MCO_SOURCE (scalar_t__) ;
 TYPE_1__* RCC ;
 int RCC_CFGR_MCO ;
 int RCC_CFGR_MCO_PRE ;
 int RCC_CFGR_PLLNODIV ;
 int assert_param (int ) ;

void RCC_MCOConfig(uint8_t RCC_MCOSource, uint32_t RCC_MCOPrescaler)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_MCO_SOURCE(RCC_MCOSource));
  assert_param(IS_RCC_MCO_PRESCALER(RCC_MCOPrescaler));


  tmpreg = RCC->CFGR;

  tmpreg &= ~(RCC_CFGR_MCO_PRE | RCC_CFGR_MCO | RCC_CFGR_PLLNODIV);

  tmpreg |= (RCC_MCOPrescaler | ((uint32_t)RCC_MCOSource<<24));

  RCC->CFGR = tmpreg;
}
