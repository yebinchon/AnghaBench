
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ CRYP_Key3Right; scalar_t__ CRYP_Key3Left; scalar_t__ CRYP_Key2Right; scalar_t__ CRYP_Key2Left; scalar_t__ CRYP_Key1Right; scalar_t__ CRYP_Key1Left; scalar_t__ CRYP_Key0Right; scalar_t__ CRYP_Key0Left; } ;
typedef TYPE_1__ CRYP_KeyInitTypeDef ;



void CRYP_KeyStructInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct)
{
  CRYP_KeyInitStruct->CRYP_Key0Left = 0;
  CRYP_KeyInitStruct->CRYP_Key0Right = 0;
  CRYP_KeyInitStruct->CRYP_Key1Left = 0;
  CRYP_KeyInitStruct->CRYP_Key1Right = 0;
  CRYP_KeyInitStruct->CRYP_Key2Left = 0;
  CRYP_KeyInitStruct->CRYP_Key2Right = 0;
  CRYP_KeyInitStruct->CRYP_Key3Left = 0;
  CRYP_KeyInitStruct->CRYP_Key3Right = 0;
}
