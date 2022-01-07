
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int DCTRL; int DLEN; int DTIMER; } ;
struct TYPE_4__ {int SDIO_TransferDir; int SDIO_TransferMode; int SDIO_DPSM; scalar_t__ SDIO_DataBlockSize; int SDIO_DataLength; int SDIO_DataTimeOut; } ;
typedef TYPE_1__ SDIO_DataInitTypeDef ;


 int DCTRL_CLEAR_MASK ;
 int IS_SDIO_BLOCK_SIZE (scalar_t__) ;
 int IS_SDIO_DATA_LENGTH (int ) ;
 int IS_SDIO_DPSM (int) ;
 int IS_SDIO_TRANSFER_DIR (int) ;
 int IS_SDIO_TRANSFER_MODE (int) ;
 TYPE_3__* SDIO ;
 int assert_param (int ) ;

void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_SDIO_DATA_LENGTH(SDIO_DataInitStruct->SDIO_DataLength));
  assert_param(IS_SDIO_BLOCK_SIZE(SDIO_DataInitStruct->SDIO_DataBlockSize));
  assert_param(IS_SDIO_TRANSFER_DIR(SDIO_DataInitStruct->SDIO_TransferDir));
  assert_param(IS_SDIO_TRANSFER_MODE(SDIO_DataInitStruct->SDIO_TransferMode));
  assert_param(IS_SDIO_DPSM(SDIO_DataInitStruct->SDIO_DPSM));



  SDIO->DTIMER = SDIO_DataInitStruct->SDIO_DataTimeOut;



  SDIO->DLEN = SDIO_DataInitStruct->SDIO_DataLength;



  tmpreg = SDIO->DCTRL;

  tmpreg &= DCTRL_CLEAR_MASK;




  tmpreg |= (uint32_t)SDIO_DataInitStruct->SDIO_DataBlockSize | SDIO_DataInitStruct->SDIO_TransferDir
           | SDIO_DataInitStruct->SDIO_TransferMode | SDIO_DataInitStruct->SDIO_DPSM;


  SDIO->DCTRL = tmpreg;
}
