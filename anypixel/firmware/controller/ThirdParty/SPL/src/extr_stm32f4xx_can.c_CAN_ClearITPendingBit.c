
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int TSR; void* MSR; void* ESR; int RF1R; int RF0R; } ;
typedef TYPE_1__ CAN_TypeDef ;
 void* CAN_MSR_ERRI ;
 void* CAN_MSR_SLAKI ;
 void* CAN_MSR_WKUI ;
 int CAN_RF0R_FOVR0 ;
 int CAN_RF0R_FULL0 ;
 int CAN_RF1R_FOVR1 ;
 int CAN_RF1R_FULL1 ;
 int CAN_TSR_RQCP0 ;
 int CAN_TSR_RQCP1 ;
 int CAN_TSR_RQCP2 ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_CLEAR_IT (int) ;
 void* RESET ;
 int assert_param (int ) ;

void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT)
{

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_CLEAR_IT(CAN_IT));

  switch (CAN_IT)
  {
    case 129:

      CANx->TSR = CAN_TSR_RQCP0|CAN_TSR_RQCP1|CAN_TSR_RQCP2;
      break;
    case 135:

      CANx->RF0R = CAN_RF0R_FULL0;
      break;
    case 133:

      CANx->RF0R = CAN_RF0R_FOVR0;
      break;
    case 134:

      CANx->RF1R = CAN_RF1R_FULL1;
      break;
    case 132:

      CANx->RF1R = CAN_RF1R_FOVR1;
      break;
    case 128:

      CANx->MSR = CAN_MSR_WKUI;
      break;
    case 130:

      CANx->MSR = CAN_MSR_SLAKI;
      break;
    case 136:

      CANx->MSR = CAN_MSR_ERRI;

      break;
    case 138:

      CANx->MSR = CAN_MSR_ERRI;

      break;
    case 139:

      CANx->MSR = CAN_MSR_ERRI;

       break;
    case 131:

      CANx->ESR = RESET;

      CANx->MSR = CAN_MSR_ERRI;
      break;
    case 137:

      CANx->ESR = RESET;

      CANx->MSR = CAN_MSR_ERRI;

       break;
    default:
       break;
   }
}
