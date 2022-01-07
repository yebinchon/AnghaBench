
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int MCR; int MSR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ CAN_MCR_INRQ ;
 int CAN_MCR_SLEEP ;
 int CAN_MSR_INAK ;
 int CAN_MSR_SLAK ;
 int CAN_Sleep_Failed ;
 int CAN_Sleep_Ok ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint8_t CAN_Sleep(CAN_TypeDef* CANx)
{
  uint8_t sleepstatus = CAN_Sleep_Failed;


  assert_param(IS_CAN_ALL_PERIPH(CANx));


   CANx->MCR = (((CANx->MCR) & (uint32_t)(~(uint32_t)CAN_MCR_INRQ)) | CAN_MCR_SLEEP);


  if ((CANx->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
  {

    sleepstatus = CAN_Sleep_Ok;
  }

   return (uint8_t)sleepstatus;
}
