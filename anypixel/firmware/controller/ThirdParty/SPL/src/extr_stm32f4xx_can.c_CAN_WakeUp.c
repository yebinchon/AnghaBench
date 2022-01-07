
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int MCR; int MSR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ CAN_MCR_SLEEP ;
 int CAN_MSR_SLAK ;
 int CAN_WakeUp_Failed ;
 int CAN_WakeUp_Ok ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int SLAK_TIMEOUT ;
 int assert_param (int ) ;

uint8_t CAN_WakeUp(CAN_TypeDef* CANx)
{
  uint32_t wait_slak = SLAK_TIMEOUT;
  uint8_t wakeupstatus = CAN_WakeUp_Failed;


  assert_param(IS_CAN_ALL_PERIPH(CANx));


  CANx->MCR &= ~(uint32_t)CAN_MCR_SLEEP;


  while(((CANx->MSR & CAN_MSR_SLAK) == CAN_MSR_SLAK)&&(wait_slak!=0x00))
  {
   wait_slak--;
  }
  if((CANx->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
  {

    wakeupstatus = CAN_WakeUp_Ok;
  }

  return (uint8_t)wakeupstatus;
}
