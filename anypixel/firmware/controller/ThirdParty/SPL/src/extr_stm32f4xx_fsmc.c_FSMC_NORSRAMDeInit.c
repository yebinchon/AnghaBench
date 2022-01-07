
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int* BTCR; } ;
struct TYPE_3__ {int* BWTR; } ;


 TYPE_2__* FSMC_Bank1 ;
 TYPE_1__* FSMC_Bank1E ;
 size_t FSMC_Bank1_NORSRAM1 ;
 int IS_FSMC_NORSRAM_BANK (size_t) ;
 int assert_param (int ) ;

void FSMC_NORSRAMDeInit(uint32_t FSMC_Bank)
{

  assert_param(IS_FSMC_NORSRAM_BANK(FSMC_Bank));


  if(FSMC_Bank == FSMC_Bank1_NORSRAM1)
  {
    FSMC_Bank1->BTCR[FSMC_Bank] = 0x000030DB;
  }

  else
  {
    FSMC_Bank1->BTCR[FSMC_Bank] = 0x000030D2;
  }
  FSMC_Bank1->BTCR[FSMC_Bank + 1] = 0x0FFFFFFF;
  FSMC_Bank1E->BWTR[FSMC_Bank] = 0x0FFFFFFF;
}
