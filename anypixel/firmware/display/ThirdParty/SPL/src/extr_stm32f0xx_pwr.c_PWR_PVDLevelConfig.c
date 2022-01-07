
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;


 int CR_PLS_MASK ;
 int IS_PWR_PVD_LEVEL (int ) ;
 TYPE_1__* PWR ;
 int assert_param (int ) ;

void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel)
{
  uint32_t tmpreg = 0;


  assert_param(IS_PWR_PVD_LEVEL(PWR_PVDLevel));

  tmpreg = PWR->CR;


  tmpreg &= CR_PLS_MASK;


  tmpreg |= PWR_PVDLevel;


  PWR->CR = tmpreg;
}
