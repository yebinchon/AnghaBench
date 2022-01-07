
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int IER; int MSR; int ESR; int RF1R; int RF0R; int TSR; } ;
typedef int ITStatus ;
typedef TYPE_1__ CAN_TypeDef ;


 int CAN_ESR_BOFF ;
 int CAN_ESR_EPVF ;
 int CAN_ESR_EWGF ;
 int CAN_ESR_LEC ;
 int CAN_MSR_ERRI ;
 int CAN_MSR_SLAKI ;
 int CAN_MSR_WKUI ;
 int CAN_RF0R_FMP0 ;
 int CAN_RF0R_FOVR0 ;
 int CAN_RF0R_FULL0 ;
 int CAN_RF1R_FMP1 ;
 int CAN_RF1R_FOVR1 ;
 int CAN_RF1R_FULL1 ;
 int CAN_TSR_RQCP0 ;
 int CAN_TSR_RQCP1 ;
 int CAN_TSR_RQCP2 ;
 int CheckITStatus (int ,int) ;
 int IS_CAN_ALL_PERIPH (TYPE_1__*) ;
 int IS_CAN_IT (int) ;
 int RESET ;
 int assert_param (int ) ;

ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT)
{
  ITStatus itstatus = RESET;

  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_IT(CAN_IT));


 if((CANx->IER & CAN_IT) != RESET)
 {

    switch (CAN_IT)
    {
      case 129:

        itstatus = CheckITStatus(CANx->TSR, CAN_TSR_RQCP0|CAN_TSR_RQCP1|CAN_TSR_RQCP2);
        break;
      case 135:

        itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FMP0);
        break;
      case 137:

        itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FULL0);
        break;
      case 133:

        itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FOVR0);
        break;
      case 134:

        itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FMP1);
        break;
      case 136:

        itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FULL1);
        break;
      case 132:

        itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FOVR1);
        break;
      case 128:

        itstatus = CheckITStatus(CANx->MSR, CAN_MSR_WKUI);
        break;
      case 130:

        itstatus = CheckITStatus(CANx->MSR, CAN_MSR_SLAKI);
        break;
      case 138:

        itstatus = CheckITStatus(CANx->ESR, CAN_ESR_EWGF);
        break;
      case 140:

        itstatus = CheckITStatus(CANx->ESR, CAN_ESR_EPVF);
        break;
      case 141:

        itstatus = CheckITStatus(CANx->ESR, CAN_ESR_BOFF);
        break;
      case 131:

        itstatus = CheckITStatus(CANx->ESR, CAN_ESR_LEC);
        break;
      case 139:

        itstatus = CheckITStatus(CANx->MSR, CAN_MSR_ERRI);
        break;
      default:

        itstatus = RESET;
        break;
    }
  }
  else
  {

    itstatus = RESET;
  }


  return itstatus;
}
