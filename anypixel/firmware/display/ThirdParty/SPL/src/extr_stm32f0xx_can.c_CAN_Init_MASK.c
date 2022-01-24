#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct TYPE_7__ {scalar_t__ CAN_TTCM; scalar_t__ CAN_ABOM; scalar_t__ CAN_AWUM; scalar_t__ CAN_NART; scalar_t__ CAN_RFLM; scalar_t__ CAN_TXFP; scalar_t__ CAN_Prescaler; scalar_t__ CAN_BS2; scalar_t__ CAN_BS1; scalar_t__ CAN_SJW; scalar_t__ CAN_Mode; } ;
struct TYPE_6__ {scalar_t__ MCR; int MSR; scalar_t__ BTR; } ;
typedef  TYPE_1__ CAN_TypeDef ;
typedef  TYPE_2__ CAN_InitTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_InitStatus_Failed ; 
 int /*<<< orphan*/  CAN_InitStatus_Success ; 
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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

uint8_t FUNC8(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct)
{
  uint8_t InitStatus = CAN_InitStatus_Failed;
  uint32_t wait_ack = 0x00000000;
  
  /* Check the parameters */
  FUNC7(FUNC0(CANx));
  FUNC7(FUNC6(CAN_InitStruct->CAN_TTCM));
  FUNC7(FUNC6(CAN_InitStruct->CAN_ABOM));
  FUNC7(FUNC6(CAN_InitStruct->CAN_AWUM));
  FUNC7(FUNC6(CAN_InitStruct->CAN_NART));
  FUNC7(FUNC6(CAN_InitStruct->CAN_RFLM));
  FUNC7(FUNC6(CAN_InitStruct->CAN_TXFP));
  FUNC7(FUNC3(CAN_InitStruct->CAN_Mode));
  FUNC7(FUNC5(CAN_InitStruct->CAN_SJW));
  FUNC7(FUNC1(CAN_InitStruct->CAN_BS1));
  FUNC7(FUNC2(CAN_InitStruct->CAN_BS2));
  FUNC7(FUNC4(CAN_InitStruct->CAN_Prescaler));

  /* Exit from sleep mode */
  CANx->MCR &= (~(uint32_t)CAN_MCR_SLEEP);

  /* Request initialisation */
  CANx->MCR |= CAN_MCR_INRQ ;

  /* Wait the acknowledge */
  while (((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
  {
    wait_ack++;
  }

  /* Check acknowledge */
  if ((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
  {
    InitStatus = CAN_InitStatus_Failed;
  }
  else 
  {
    /* Set the time triggered communication mode */
    if (CAN_InitStruct->CAN_TTCM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_TTCM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_TTCM;
    }

    /* Set the automatic bus-off management */
    if (CAN_InitStruct->CAN_ABOM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_ABOM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_ABOM;
    }

    /* Set the automatic wake-up mode */
    if (CAN_InitStruct->CAN_AWUM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_AWUM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_AWUM;
    }

    /* Set the no automatic retransmission */
    if (CAN_InitStruct->CAN_NART == ENABLE)
    {
      CANx->MCR |= CAN_MCR_NART;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_NART;
    }

    /* Set the receive FIFO locked mode */
    if (CAN_InitStruct->CAN_RFLM == ENABLE)
    {
      CANx->MCR |= CAN_MCR_RFLM;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_RFLM;
    }

    /* Set the transmit FIFO priority */
    if (CAN_InitStruct->CAN_TXFP == ENABLE)
    {
      CANx->MCR |= CAN_MCR_TXFP;
    }
    else
    {
      CANx->MCR &= ~(uint32_t)CAN_MCR_TXFP;
    }

    /* Set the bit timing register */
    CANx->BTR = (uint32_t)((uint32_t)CAN_InitStruct->CAN_Mode << 30) | \
                ((uint32_t)CAN_InitStruct->CAN_SJW << 24) | \
                ((uint32_t)CAN_InitStruct->CAN_BS1 << 16) | \
                ((uint32_t)CAN_InitStruct->CAN_BS2 << 20) | \
               ((uint32_t)CAN_InitStruct->CAN_Prescaler - 1);

    /* Request leave initialisation */
    CANx->MCR &= ~(uint32_t)CAN_MCR_INRQ;

   /* Wait the acknowledge */
   wait_ack = 0;

   while (((CANx->MSR & CAN_MSR_INAK) == (uint16_t)CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
   {
     wait_ack++;
   }

    /* ...and check acknowledged */
    if ((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
    {
      InitStatus = CAN_InitStatus_Failed;
    }
    else
    {
      InitStatus = CAN_InitStatus_Success ;
    }
  }

  /* At this step, return the status of initialization */
  return InitStatus;
}