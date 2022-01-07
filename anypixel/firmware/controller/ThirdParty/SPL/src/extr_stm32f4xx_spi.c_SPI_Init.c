
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {int SPI_Mode; int SPI_DataSize; int SPI_CPOL; int SPI_CPHA; int SPI_NSS; int SPI_BaudRatePrescaler; int SPI_FirstBit; int SPI_CRCPolynomial; scalar_t__ SPI_Direction; } ;
struct TYPE_6__ {int CRCPR; scalar_t__ I2SCFGR; scalar_t__ CR1; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef TYPE_2__ SPI_InitTypeDef ;


 scalar_t__ CR1_CLEAR_MASK ;
 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int IS_SPI_BAUDRATE_PRESCALER (int) ;
 int IS_SPI_CPHA (int) ;
 int IS_SPI_CPOL (int) ;
 int IS_SPI_CRC_POLYNOMIAL (int ) ;
 int IS_SPI_DATASIZE (int) ;
 int IS_SPI_DIRECTION_MODE (scalar_t__) ;
 int IS_SPI_FIRST_BIT (int) ;
 int IS_SPI_MODE (int) ;
 int IS_SPI_NSS (int) ;
 scalar_t__ SPI_I2SCFGR_I2SMOD ;
 int assert_param (int ) ;

void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct)
{
  uint16_t tmpreg = 0;


  assert_param(IS_SPI_ALL_PERIPH(SPIx));


  assert_param(IS_SPI_DIRECTION_MODE(SPI_InitStruct->SPI_Direction));
  assert_param(IS_SPI_MODE(SPI_InitStruct->SPI_Mode));
  assert_param(IS_SPI_DATASIZE(SPI_InitStruct->SPI_DataSize));
  assert_param(IS_SPI_CPOL(SPI_InitStruct->SPI_CPOL));
  assert_param(IS_SPI_CPHA(SPI_InitStruct->SPI_CPHA));
  assert_param(IS_SPI_NSS(SPI_InitStruct->SPI_NSS));
  assert_param(IS_SPI_BAUDRATE_PRESCALER(SPI_InitStruct->SPI_BaudRatePrescaler));
  assert_param(IS_SPI_FIRST_BIT(SPI_InitStruct->SPI_FirstBit));
  assert_param(IS_SPI_CRC_POLYNOMIAL(SPI_InitStruct->SPI_CRCPolynomial));



  tmpreg = SPIx->CR1;

  tmpreg &= CR1_CLEAR_MASK;
  tmpreg |= (uint16_t)((uint32_t)SPI_InitStruct->SPI_Direction | SPI_InitStruct->SPI_Mode |
                  SPI_InitStruct->SPI_DataSize | SPI_InitStruct->SPI_CPOL |
                  SPI_InitStruct->SPI_CPHA | SPI_InitStruct->SPI_NSS |
                  SPI_InitStruct->SPI_BaudRatePrescaler | SPI_InitStruct->SPI_FirstBit);

  SPIx->CR1 = tmpreg;


  SPIx->I2SCFGR &= (uint16_t)~((uint16_t)SPI_I2SCFGR_I2SMOD);


  SPIx->CRCPR = SPI_InitStruct->SPI_CRCPolynomial;
}
