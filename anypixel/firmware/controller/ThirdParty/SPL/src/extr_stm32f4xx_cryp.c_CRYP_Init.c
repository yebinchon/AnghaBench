
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int CR; } ;
struct TYPE_4__ {int CRYP_AlgoDir; int CRYP_KeySize; int CRYP_AlgoMode; int CRYP_DataType; } ;
typedef TYPE_1__ CRYP_InitTypeDef ;


 TYPE_3__* CRYP ;
 int CRYP_AlgoMode_AES_CBC ;
 int CRYP_AlgoMode_AES_CTR ;
 int CRYP_AlgoMode_AES_ECB ;
 int CRYP_AlgoMode_AES_Key ;
 int CRYP_CR_ALGODIR ;
 int CRYP_CR_ALGOMODE ;
 int CRYP_CR_DATATYPE ;
 int CRYP_CR_KEYSIZE ;
 int IS_CRYP_ALGODIR (int ) ;
 int IS_CRYP_ALGOMODE (int ) ;
 int IS_CRYP_DATATYPE (int ) ;
 int IS_CRYP_KEYSIZE (int ) ;
 int assert_param (int ) ;

void CRYP_Init(CRYP_InitTypeDef* CRYP_InitStruct)
{

  assert_param(IS_CRYP_ALGOMODE(CRYP_InitStruct->CRYP_AlgoMode));
  assert_param(IS_CRYP_DATATYPE(CRYP_InitStruct->CRYP_DataType));
  assert_param(IS_CRYP_ALGODIR(CRYP_InitStruct->CRYP_AlgoDir));


  CRYP->CR &= ~CRYP_CR_ALGOMODE;
  CRYP->CR |= CRYP_InitStruct->CRYP_AlgoMode;


  CRYP->CR &= ~CRYP_CR_DATATYPE;
  CRYP->CR |= CRYP_InitStruct->CRYP_DataType;


  if ((CRYP_InitStruct->CRYP_AlgoMode == CRYP_AlgoMode_AES_ECB) ||
      (CRYP_InitStruct->CRYP_AlgoMode == CRYP_AlgoMode_AES_CBC) ||
      (CRYP_InitStruct->CRYP_AlgoMode == CRYP_AlgoMode_AES_CTR) ||
      (CRYP_InitStruct->CRYP_AlgoMode == CRYP_AlgoMode_AES_Key))
  {
    assert_param(IS_CRYP_KEYSIZE(CRYP_InitStruct->CRYP_KeySize));
    CRYP->CR &= ~CRYP_CR_KEYSIZE;
    CRYP->CR |= CRYP_InitStruct->CRYP_KeySize;


  }


  CRYP->CR &= ~CRYP_CR_ALGODIR;
  CRYP->CR |= CRYP_InitStruct->CRYP_AlgoDir;
}
