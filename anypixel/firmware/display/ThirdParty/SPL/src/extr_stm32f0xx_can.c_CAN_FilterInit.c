
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int FA1R; int FS1R; int FM1R; int FFA1R; int FMR; TYPE_1__* sFilterRegister; } ;
struct TYPE_6__ {int CAN_FilterNumber; scalar_t__ CAN_FilterMode; scalar_t__ CAN_FilterScale; scalar_t__ CAN_FilterFIFOAssignment; scalar_t__ CAN_FilterActivation; scalar_t__ CAN_FilterMaskIdLow; scalar_t__ CAN_FilterMaskIdHigh; scalar_t__ CAN_FilterIdLow; scalar_t__ CAN_FilterIdHigh; } ;
struct TYPE_5__ {int FR1; int FR2; } ;
typedef TYPE_2__ CAN_FilterInitTypeDef ;


 TYPE_4__* CAN ;
 scalar_t__ CAN_FilterMode_IdMask ;
 scalar_t__ CAN_FilterScale_16bit ;
 scalar_t__ CAN_FilterScale_32bit ;
 scalar_t__ CAN_Filter_FIFO0 ;
 scalar_t__ CAN_Filter_FIFO1 ;
 scalar_t__ ENABLE ;
 int FMR_FINIT ;
 int IS_CAN_FILTER_FIFO (scalar_t__) ;
 int IS_CAN_FILTER_MODE (scalar_t__) ;
 int IS_CAN_FILTER_NUMBER (int) ;
 int IS_CAN_FILTER_SCALE (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct)
{
  uint32_t filter_number_bit_pos = 0;

  assert_param(IS_CAN_FILTER_NUMBER(CAN_FilterInitStruct->CAN_FilterNumber));
  assert_param(IS_CAN_FILTER_MODE(CAN_FilterInitStruct->CAN_FilterMode));
  assert_param(IS_CAN_FILTER_SCALE(CAN_FilterInitStruct->CAN_FilterScale));
  assert_param(IS_CAN_FILTER_FIFO(CAN_FilterInitStruct->CAN_FilterFIFOAssignment));
  assert_param(IS_FUNCTIONAL_STATE(CAN_FilterInitStruct->CAN_FilterActivation));

  filter_number_bit_pos = ((uint32_t)1) << CAN_FilterInitStruct->CAN_FilterNumber;


  CAN->FMR |= FMR_FINIT;


  CAN->FA1R &= ~(uint32_t)filter_number_bit_pos;


  if (CAN_FilterInitStruct->CAN_FilterScale == CAN_FilterScale_16bit)
  {

    CAN->FS1R &= ~(uint32_t)filter_number_bit_pos;



    CAN->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 =
       ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);



    CAN->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 =
       ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh);
  }

  if (CAN_FilterInitStruct->CAN_FilterScale == CAN_FilterScale_32bit)
  {

    CAN->FS1R |= filter_number_bit_pos;

    CAN->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 =
       ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);

    CAN->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 =
       ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow);
  }


  if (CAN_FilterInitStruct->CAN_FilterMode == CAN_FilterMode_IdMask)
  {

    CAN->FM1R &= ~(uint32_t)filter_number_bit_pos;
  }
  else
  {

    CAN->FM1R |= (uint32_t)filter_number_bit_pos;
  }


  if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == CAN_Filter_FIFO0)
  {

    CAN->FFA1R &= ~(uint32_t)filter_number_bit_pos;
  }

  if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == CAN_Filter_FIFO1)
  {

    CAN->FFA1R |= (uint32_t)filter_number_bit_pos;
  }


  if (CAN_FilterInitStruct->CAN_FilterActivation == ENABLE)
  {
    CAN->FA1R |= filter_number_bit_pos;
  }


  CAN->FMR &= ~FMR_FINIT;
}
