
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ CAN_TTCM; scalar_t__ CAN_ABOM; scalar_t__ CAN_AWUM; scalar_t__ CAN_NART; scalar_t__ CAN_RFLM; scalar_t__ CAN_TXFP; scalar_t__ CAN_Prescaler; scalar_t__ CAN_BS2; scalar_t__ CAN_BS1; scalar_t__ CAN_SJW; scalar_t__ CAN_Mode; } ;
struct TYPE_6__ {scalar_t__ MCR; int MSR; scalar_t__ BTR; } ;
typedef TYPE_1__ CAN_TypeDef ;
typedef TYPE_2__ CAN_InitTypeDef ;


 int CAN_InitStatus_Failed ;
 int CAN_InitStatus_Success ;
 scalar_t__ CAN_MCR_ABOM ;
 scalar_t__ CAN_MCR_AWUM ;
 scalar_t__ CAN_MCR_INRQ ;
 scalar_t__ CAN_MCR_NART ;
 scalar_t__ CAN_MCR_RFLM ;
 scalar_t__ CAN_MCR_SLEEP ;
 scalar_t__ CAN_MCR_TTCM ;
 scalar_t__ CAN_MCR_TXFP ;
 int CAN_MSR_INAK ;
 scalar_t__ ENABLE ;
 scalar_t__ INAK_TIMEOUT ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_BS1 (scalar_t__) ;
 int IS_CAN_BS2 (scalar_t__) ;
 int IS_CAN_MODE (scalar_t__) ;
 int IS_CAN_PRESCALER (scalar_t__) ;
 int IS_CAN_SJW (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct)
{
  uint8_t InitStatus = CAN_InitStatus_Failed;
  uint32_t wait_ack = 0x00000000;

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_TTCM));
  assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_ABOM));
  assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_AWUM));
  assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_NART));
  assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_RFLM));
  assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_TXFP));
  assert_param(IS_CAN_MODE(CAN_InitStruct->CAN_Mode));
  assert_param(IS_CAN_SJW(CAN_InitStruct->CAN_SJW));
  assert_param(IS_CAN_BS1(CAN_InitStruct->CAN_BS1));
  assert_param(IS_CAN_BS2(CAN_InitStruct->CAN_BS2));
  assert_param(IS_CAN_PRESCALER(CAN_InitStruct->CAN_Prescaler));


  CANx->MCR &= (~(uint32_t)CAN_MCR_SLEEP);


  CANx->MCR |= CAN_MCR_INRQ ;


  while (((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
  {
    wait_ack++;
  }


  if ((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
  {
    InitStatus = CAN_InitStatus_Failed;
  }
  else
  {

    if (CAN_InitStruct->CAN_TTCM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_TTCM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_TTCM;
    }


    if (CAN_InitStruct->CAN_ABOM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_ABOM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_ABOM;
    }


    if (CAN_InitStruct->CAN_AWUM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_AWUM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_AWUM;
    }


    if (CAN_InitStruct->CAN_NART == ENABLE)
    {
      CANx->MCR |= CAN_MCR_NART;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_NART;
    }


    if (CAN_InitStruct->CAN_RFLM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_RFLM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_RFLM;
    }


    if (CAN_InitStruct->CAN_TXFP == ENABLE)
    {
      CANx->MCR |= CAN_MCR_TXFP;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_TXFP;
    }


    CANx->BTR = (uint32_t)((uint32_t)CAN_InitStruct->CAN_Mode << 30) | ((uint32_t)CAN_InitStruct->CAN_SJW << 24) | ((uint32_t)CAN_InitStruct->CAN_BS1 << 16) | ((uint32_t)CAN_InitStruct->CAN_BS2 << 20) | ((uint32_t)CAN_InitStruct->CAN_Prescaler - 1);






    CANx->MCR &= ~(uint32_t)CAN_MCR_INRQ;


   wait_ack = 0;

   while (((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
   {
     wait_ack++;
   }


    if ((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
    {
      InitStatus = CAN_InitStatus_Failed;
    }
    else
    {
      InitStatus = CAN_InitStatus_Success ;
    }
  }


  return InitStatus;
}
