
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {TYPE_1__* sTxMailBox; scalar_t__ MCR; } ;
struct TYPE_5__ {scalar_t__ TDTR; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_2__ CAN_TypeDef ;


 scalar_t__ CAN_MCR_TTCM ;
 scalar_t__ CAN_TDT0R_TGT ;
 scalar_t__ CAN_TDT1R_TGT ;
 scalar_t__ CAN_TDT2R_TGT ;
 scalar_t__ DISABLE ;
 int IS_CAN_ALL_PERIPH (TYPE_2__*) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {

    CANx->MCR |= CAN_MCR_TTCM;


    CANx->sTxMailBox[0].TDTR |= ((uint32_t)CAN_TDT0R_TGT);
    CANx->sTxMailBox[1].TDTR |= ((uint32_t)CAN_TDT1R_TGT);
    CANx->sTxMailBox[2].TDTR |= ((uint32_t)CAN_TDT2R_TGT);
  }
  else
  {

    CANx->MCR &= (uint32_t)(~(uint32_t)CAN_MCR_TTCM);


    CANx->sTxMailBox[0].TDTR &= ((uint32_t)~CAN_TDT0R_TGT);
    CANx->sTxMailBox[1].TDTR &= ((uint32_t)~CAN_TDT1R_TGT);
    CANx->sTxMailBox[2].TDTR &= ((uint32_t)~CAN_TDT2R_TGT);
  }
}
