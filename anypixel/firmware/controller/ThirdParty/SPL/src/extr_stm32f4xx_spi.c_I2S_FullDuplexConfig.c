
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ I2S_Mode; int I2S_Standard; int I2S_DataFormat; scalar_t__ I2S_CPOL; } ;
struct TYPE_6__ {int I2SCFGR; int I2SPR; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef TYPE_2__ I2S_InitTypeDef ;


 int I2SCFGR_CLEAR_MASK ;
 scalar_t__ I2S_Mode_MasterRx ;
 scalar_t__ I2S_Mode_MasterTx ;
 scalar_t__ I2S_Mode_SlaveRx ;
 scalar_t__ I2S_Mode_SlaveTx ;
 int IS_I2S_CPOL (scalar_t__) ;
 int IS_I2S_DATA_FORMAT (int) ;
 int IS_I2S_EXT_PERIPH (TYPE_1__*) ;
 int IS_I2S_MODE (scalar_t__) ;
 int IS_I2S_STANDARD (int) ;
 scalar_t__ SPI_I2SCFGR_I2SMOD ;
 int assert_param (int ) ;

void I2S_FullDuplexConfig(SPI_TypeDef* I2Sxext, I2S_InitTypeDef* I2S_InitStruct)
{
  uint16_t tmpreg = 0, tmp = 0;


  assert_param(IS_I2S_EXT_PERIPH(I2Sxext));
  assert_param(IS_I2S_MODE(I2S_InitStruct->I2S_Mode));
  assert_param(IS_I2S_STANDARD(I2S_InitStruct->I2S_Standard));
  assert_param(IS_I2S_DATA_FORMAT(I2S_InitStruct->I2S_DataFormat));
  assert_param(IS_I2S_CPOL(I2S_InitStruct->I2S_CPOL));



  I2Sxext->I2SCFGR &= I2SCFGR_CLEAR_MASK;
  I2Sxext->I2SPR = 0x0002;


  tmpreg = I2Sxext->I2SCFGR;


  if ((I2S_InitStruct->I2S_Mode == I2S_Mode_MasterTx) || (I2S_InitStruct->I2S_Mode == I2S_Mode_SlaveTx))
  {
    tmp = I2S_Mode_SlaveRx;
  }
  else
  {
    if ((I2S_InitStruct->I2S_Mode == I2S_Mode_MasterRx) || (I2S_InitStruct->I2S_Mode == I2S_Mode_SlaveRx))
    {
      tmp = I2S_Mode_SlaveTx;
    }
  }



  tmpreg |= (uint16_t)((uint16_t)SPI_I2SCFGR_I2SMOD | (uint16_t)(tmp | (uint16_t)(I2S_InitStruct->I2S_Standard | (uint16_t)(I2S_InitStruct->I2S_DataFormat | (uint16_t)I2S_InitStruct->I2S_CPOL))));




  I2Sxext->I2SCFGR = tmpreg;
}
