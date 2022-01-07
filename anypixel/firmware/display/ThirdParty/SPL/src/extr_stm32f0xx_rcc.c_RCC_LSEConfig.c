
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int BDCR; } ;


 int IS_RCC_LSE (int ) ;
 TYPE_1__* RCC ;
 int RCC_BDCR_LSEBYP ;
 int RCC_BDCR_LSEON ;
 int assert_param (int ) ;

void RCC_LSEConfig(uint32_t RCC_LSE)
{

  assert_param(IS_RCC_LSE(RCC_LSE));



  RCC->BDCR &= ~(RCC_BDCR_LSEON);


  RCC->BDCR &= ~(RCC_BDCR_LSEBYP);


  RCC->BDCR |= RCC_LSE;
}
