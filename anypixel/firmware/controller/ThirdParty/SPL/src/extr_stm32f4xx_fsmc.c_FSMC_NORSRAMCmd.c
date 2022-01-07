
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {int * BTCR; } ;
typedef scalar_t__ FunctionalState ;


 int BCR_MBKEN_RESET ;
 int BCR_MBKEN_SET ;
 scalar_t__ DISABLE ;
 TYPE_1__* FSMC_Bank1 ;
 int IS_FSMC_NORSRAM_BANK (size_t) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void FSMC_NORSRAMCmd(uint32_t FSMC_Bank, FunctionalState NewState)
{
  assert_param(IS_FSMC_NORSRAM_BANK(FSMC_Bank));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    FSMC_Bank1->BTCR[FSMC_Bank] |= BCR_MBKEN_SET;
  }
  else
  {

    FSMC_Bank1->BTCR[FSMC_Bank] &= BCR_MBKEN_RESET;
  }
}
