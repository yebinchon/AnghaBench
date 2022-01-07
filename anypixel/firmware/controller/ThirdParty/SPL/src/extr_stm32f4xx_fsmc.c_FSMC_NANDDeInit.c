
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int PCR2; int SR2; int PMEM2; int PATT2; } ;
struct TYPE_3__ {int PCR3; int SR3; int PMEM3; int PATT3; } ;


 TYPE_2__* FSMC_Bank2 ;
 scalar_t__ FSMC_Bank2_NAND ;
 TYPE_1__* FSMC_Bank3 ;
 int IS_FSMC_NAND_BANK (scalar_t__) ;
 int assert_param (int ) ;

void FSMC_NANDDeInit(uint32_t FSMC_Bank)
{

  assert_param(IS_FSMC_NAND_BANK(FSMC_Bank));

  if(FSMC_Bank == FSMC_Bank2_NAND)
  {

    FSMC_Bank2->PCR2 = 0x00000018;
    FSMC_Bank2->SR2 = 0x00000040;
    FSMC_Bank2->PMEM2 = 0xFCFCFCFC;
    FSMC_Bank2->PATT2 = 0xFCFCFCFC;
  }

  else
  {

    FSMC_Bank3->PCR3 = 0x00000018;
    FSMC_Bank3->SR3 = 0x00000040;
    FSMC_Bank3->PMEM3 = 0xFCFCFCFC;
    FSMC_Bank3->PATT3 = 0xFCFCFCFC;
  }
}
