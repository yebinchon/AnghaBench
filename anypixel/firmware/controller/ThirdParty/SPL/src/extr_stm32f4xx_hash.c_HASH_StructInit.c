
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HASH_HMACKeyType; int HASH_DataType; int HASH_AlgoMode; int HASH_AlgoSelection; } ;
typedef TYPE_1__ HASH_InitTypeDef ;


 int HASH_AlgoMode_HASH ;
 int HASH_AlgoSelection_SHA1 ;
 int HASH_DataType_32b ;
 int HASH_HMACKeyType_ShortKey ;

void HASH_StructInit(HASH_InitTypeDef* HASH_InitStruct)
{

  HASH_InitStruct->HASH_AlgoSelection = HASH_AlgoSelection_SHA1;


  HASH_InitStruct->HASH_AlgoMode = HASH_AlgoMode_HASH;


  HASH_InitStruct->HASH_DataType = HASH_DataType_32b;


  HASH_InitStruct->HASH_HMACKeyType = HASH_HMACKeyType_ShortKey;
}
