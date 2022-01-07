
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ SR2; } ;
struct TYPE_5__ {scalar_t__ SR3; } ;
struct TYPE_4__ {scalar_t__ SR4; } ;


 TYPE_3__* FSMC_Bank2 ;
 scalar_t__ FSMC_Bank2_NAND ;
 TYPE_2__* FSMC_Bank3 ;
 scalar_t__ FSMC_Bank3_NAND ;
 TYPE_1__* FSMC_Bank4 ;
 int IS_FSMC_CLEAR_FLAG (scalar_t__) ;
 int IS_FSMC_GETFLAG_BANK (scalar_t__) ;
 int assert_param (int ) ;

void FSMC_ClearFlag(uint32_t FSMC_Bank, uint32_t FSMC_FLAG)
{

  assert_param(IS_FSMC_GETFLAG_BANK(FSMC_Bank));
  assert_param(IS_FSMC_CLEAR_FLAG(FSMC_FLAG)) ;

  if(FSMC_Bank == FSMC_Bank2_NAND)
  {
    FSMC_Bank2->SR2 &= ~FSMC_FLAG;
  }
  else if(FSMC_Bank == FSMC_Bank3_NAND)
  {
    FSMC_Bank3->SR3 &= ~FSMC_FLAG;
  }

  else
  {
    FSMC_Bank4->SR4 &= ~FSMC_FLAG;
  }
}
