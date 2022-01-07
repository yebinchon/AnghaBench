
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int FMR; } ;


 TYPE_1__* CAN ;
 int FMR_FINIT ;
 int IS_CAN_BANKNUMBER (scalar_t__) ;
 int assert_param (int ) ;

void CAN_SlaveStartBank(uint8_t CAN_BankNumber)
{

  assert_param(IS_CAN_BANKNUMBER(CAN_BankNumber));


  CAN->FMR |= FMR_FINIT;


  CAN->FMR &= (uint32_t)0xFFFFC0F1 ;
  CAN->FMR |= (uint32_t)(CAN_BankNumber)<<8;


  CAN->FMR &= ~FMR_FINIT;
}
