
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int BDCR; } ;


 int IS_RCC_LSE_DRIVE (int ) ;
 TYPE_1__* RCC ;
 int RCC_BDCR_LSEDRV ;
 int assert_param (int ) ;

void RCC_LSEDriveConfig(uint32_t RCC_LSEDrive)
{

  assert_param(IS_RCC_LSE_DRIVE(RCC_LSEDrive));


  RCC->BDCR &= ~(RCC_BDCR_LSEDRV);


  RCC->BDCR |= RCC_LSEDrive;
}
