
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SDIO_DataTimeOut; int SDIO_DataLength; int SDIO_DPSM; int SDIO_TransferMode; int SDIO_TransferDir; int SDIO_DataBlockSize; } ;
typedef TYPE_1__ SDIO_DataInitTypeDef ;


 int SDIO_DPSM_Disable ;
 int SDIO_DataBlockSize_1b ;
 int SDIO_TransferDir_ToCard ;
 int SDIO_TransferMode_Block ;

void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
{

  SDIO_DataInitStruct->SDIO_DataTimeOut = 0xFFFFFFFF;
  SDIO_DataInitStruct->SDIO_DataLength = 0x00;
  SDIO_DataInitStruct->SDIO_DataBlockSize = SDIO_DataBlockSize_1b;
  SDIO_DataInitStruct->SDIO_TransferDir = SDIO_TransferDir_ToCard;
  SDIO_DataInitStruct->SDIO_TransferMode = SDIO_TransferMode_Block;
  SDIO_DataInitStruct->SDIO_DPSM = SDIO_DPSM_Disable;
}
