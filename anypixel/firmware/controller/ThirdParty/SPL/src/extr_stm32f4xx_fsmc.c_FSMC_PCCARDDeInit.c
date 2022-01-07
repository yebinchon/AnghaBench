
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PCR4; int SR4; int PMEM4; int PATT4; int PIO4; } ;


 TYPE_1__* FSMC_Bank4 ;

void FSMC_PCCARDDeInit(void)
{

  FSMC_Bank4->PCR4 = 0x00000018;
  FSMC_Bank4->SR4 = 0x00000000;
  FSMC_Bank4->PMEM4 = 0xFCFCFCFC;
  FSMC_Bank4->PATT4 = 0xFCFCFCFC;
  FSMC_Bank4->PIO4 = 0xFCFCFCFC;
}
