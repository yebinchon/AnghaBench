
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CAN_Prescaler; int CAN_BS2; int CAN_BS1; int CAN_SJW; int CAN_Mode; void* CAN_TXFP; void* CAN_RFLM; void* CAN_NART; void* CAN_AWUM; void* CAN_ABOM; void* CAN_TTCM; } ;
typedef TYPE_1__ CAN_InitTypeDef ;


 int CAN_BS1_4tq ;
 int CAN_BS2_3tq ;
 int CAN_Mode_Normal ;
 int CAN_SJW_1tq ;
 void* DISABLE ;

void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct)
{



  CAN_InitStruct->CAN_TTCM = DISABLE;


  CAN_InitStruct->CAN_ABOM = DISABLE;


  CAN_InitStruct->CAN_AWUM = DISABLE;


  CAN_InitStruct->CAN_NART = DISABLE;


  CAN_InitStruct->CAN_RFLM = DISABLE;


  CAN_InitStruct->CAN_TXFP = DISABLE;


  CAN_InitStruct->CAN_Mode = CAN_Mode_Normal;


  CAN_InitStruct->CAN_SJW = CAN_SJW_1tq;


  CAN_InitStruct->CAN_BS1 = CAN_BS1_4tq;


  CAN_InitStruct->CAN_BS2 = CAN_BS2_3tq;


  CAN_InitStruct->CAN_Prescaler = 1;
}
