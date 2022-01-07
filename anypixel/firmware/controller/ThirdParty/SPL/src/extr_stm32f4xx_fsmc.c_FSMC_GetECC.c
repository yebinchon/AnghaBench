
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ ECCR2; } ;
struct TYPE_3__ {scalar_t__ ECCR3; } ;


 TYPE_2__* FSMC_Bank2 ;
 scalar_t__ FSMC_Bank2_NAND ;
 TYPE_1__* FSMC_Bank3 ;

uint32_t FSMC_GetECC(uint32_t FSMC_Bank)
{
  uint32_t eccval = 0x00000000;

  if(FSMC_Bank == FSMC_Bank2_NAND)
  {

    eccval = FSMC_Bank2->ECCR2;
  }
  else
  {

    eccval = FSMC_Bank3->ECCR3;
  }

  return(eccval);
}
