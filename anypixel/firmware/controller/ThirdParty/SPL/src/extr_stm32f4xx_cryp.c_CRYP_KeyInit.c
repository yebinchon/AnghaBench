
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int K3RR; int K3LR; int K2RR; int K2LR; int K1RR; int K1LR; int K0RR; int K0LR; } ;
struct TYPE_4__ {int CRYP_Key3Right; int CRYP_Key3Left; int CRYP_Key2Right; int CRYP_Key2Left; int CRYP_Key1Right; int CRYP_Key1Left; int CRYP_Key0Right; int CRYP_Key0Left; } ;
typedef TYPE_1__ CRYP_KeyInitTypeDef ;


 TYPE_3__* CRYP ;

void CRYP_KeyInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct)
{

  CRYP->K0LR = CRYP_KeyInitStruct->CRYP_Key0Left;
  CRYP->K0RR = CRYP_KeyInitStruct->CRYP_Key0Right;
  CRYP->K1LR = CRYP_KeyInitStruct->CRYP_Key1Left;
  CRYP->K1RR = CRYP_KeyInitStruct->CRYP_Key1Right;
  CRYP->K2LR = CRYP_KeyInitStruct->CRYP_Key2Left;
  CRYP->K2RR = CRYP_KeyInitStruct->CRYP_Key2Right;
  CRYP->K3LR = CRYP_KeyInitStruct->CRYP_Key3Left;
  CRYP->K3RR = CRYP_KeyInitStruct->CRYP_Key3Right;
}
