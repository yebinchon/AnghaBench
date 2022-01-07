
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CRYP_KeySize; int CRYP_DataType; int CRYP_AlgoMode; int CRYP_AlgoDir; } ;
typedef TYPE_1__ CRYP_InitTypeDef ;


 int CRYP_AlgoDir_Encrypt ;
 int CRYP_AlgoMode_TDES_ECB ;
 int CRYP_DataType_32b ;
 int CRYP_KeySize_128b ;

void CRYP_StructInit(CRYP_InitTypeDef* CRYP_InitStruct)
{

  CRYP_InitStruct->CRYP_AlgoDir = CRYP_AlgoDir_Encrypt;


  CRYP_InitStruct->CRYP_AlgoMode = CRYP_AlgoMode_TDES_ECB;


  CRYP_InitStruct->CRYP_DataType = CRYP_DataType_32b;


  CRYP_InitStruct->CRYP_KeySize = CRYP_KeySize_128b;
}
