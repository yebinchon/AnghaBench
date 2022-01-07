
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ MCR; int MSR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 scalar_t__ CAN_MCR_INRQ ;
 scalar_t__ CAN_MCR_SLEEP ;
 int CAN_MODE_MASK ;
 int CAN_MSR_INAK ;
 int CAN_MSR_SLAK ;
 scalar_t__ CAN_ModeStatus_Failed ;
 scalar_t__ CAN_ModeStatus_Success ;
 scalar_t__ CAN_OperatingMode_Initialization ;
 scalar_t__ CAN_OperatingMode_Normal ;
 scalar_t__ CAN_OperatingMode_Sleep ;
 scalar_t__ INAK_TIMEOUT ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_OPERATING_MODE (scalar_t__) ;
 int assert_param (int ) ;

uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode)
{
  uint8_t status = CAN_ModeStatus_Failed;


  uint32_t timeout = INAK_TIMEOUT;


  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_OPERATING_MODE(CAN_OperatingMode));

  if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
  {

    CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)CAN_MCR_SLEEP)) | CAN_MCR_INRQ);


    while (((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
    {
      timeout--;
    }
    if ((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
    {
      status = CAN_ModeStatus_Failed;
    }
    else
    {
      status = CAN_ModeStatus_Success;
    }
  }
  else if (CAN_OperatingMode == CAN_OperatingMode_Normal)
  {

    CANx->MCR &= (uint32_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));


    while (((CANx->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
    {
      timeout--;
    }
    if ((CANx->MSR & CAN_MODE_MASK) != 0)
    {
      status = CAN_ModeStatus_Failed;
    }
    else
    {
      status = CAN_ModeStatus_Success;
    }
  }
  else if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
  {

    CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)CAN_MCR_INRQ)) | CAN_MCR_SLEEP);


    while (((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
    {
      timeout--;
    }
    if ((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
    {
      status = CAN_ModeStatus_Failed;
    }
    else
    {
      status = CAN_ModeStatus_Success;
    }
  }
  else
  {
    status = CAN_ModeStatus_Failed;
  }

  return (uint8_t) status;
}
