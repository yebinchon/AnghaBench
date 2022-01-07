
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int CFGR; int PLLI2SCFGR; int PLLCFGR; } ;
struct TYPE_8__ {int I2S_Mode; int I2S_Standard; int I2S_DataFormat; scalar_t__ I2S_MCLKOutput; int I2S_AudioFreq; scalar_t__ I2S_CPOL; } ;
struct TYPE_7__ {int I2SCFGR; int I2SPR; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef TYPE_2__ I2S_InitTypeDef ;


 int HSE_VALUE ;
 int I2SCFGR_CLEAR_MASK ;
 int I2S_AudioFreq_Default ;
 int I2S_DataFormat_16b ;
 int I2S_EXTERNAL_CLOCK_VAL ;
 scalar_t__ I2S_MCLKOutput_Enable ;
 int IS_I2S_AUDIO_FREQ (int) ;
 int IS_I2S_CPOL (scalar_t__) ;
 int IS_I2S_DATA_FORMAT (int) ;
 int IS_I2S_MCLK_OUTPUT (scalar_t__) ;
 int IS_I2S_MODE (int) ;
 int IS_I2S_STANDARD (int) ;
 int IS_SPI_23_PERIPH (TYPE_1__*) ;
 TYPE_3__* RCC ;
 int RCC_CFGR_I2SSRC ;
 int RCC_PLLCFGR_PLLM ;
 int RCC_PLLI2SCFGR_PLLI2SN ;
 int RCC_PLLI2SCFGR_PLLI2SR ;
 scalar_t__ SPI_I2SCFGR_I2SMOD ;
 int assert_param (int ) ;

void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct)
{
  uint16_t tmpreg = 0, i2sdiv = 2, i2sodd = 0, packetlength = 1;
  uint32_t tmp = 0, i2sclk = 0;

  uint32_t pllm = 0, plln = 0, pllr = 0;



  assert_param(IS_SPI_23_PERIPH(SPIx));
  assert_param(IS_I2S_MODE(I2S_InitStruct->I2S_Mode));
  assert_param(IS_I2S_STANDARD(I2S_InitStruct->I2S_Standard));
  assert_param(IS_I2S_DATA_FORMAT(I2S_InitStruct->I2S_DataFormat));
  assert_param(IS_I2S_MCLK_OUTPUT(I2S_InitStruct->I2S_MCLKOutput));
  assert_param(IS_I2S_AUDIO_FREQ(I2S_InitStruct->I2S_AudioFreq));
  assert_param(IS_I2S_CPOL(I2S_InitStruct->I2S_CPOL));



  SPIx->I2SCFGR &= I2SCFGR_CLEAR_MASK;
  SPIx->I2SPR = 0x0002;


  tmpreg = SPIx->I2SCFGR;


  if(I2S_InitStruct->I2S_AudioFreq == I2S_AudioFreq_Default)
  {
    i2sodd = (uint16_t)0;
    i2sdiv = (uint16_t)2;
  }

  else
  {

    if(I2S_InitStruct->I2S_DataFormat == I2S_DataFormat_16b)
    {

      packetlength = 1;
    }
    else
    {

      packetlength = 2;
    }
    if ((RCC->CFGR & RCC_CFGR_I2SSRC) != 0)
    {
      RCC->CFGR &= ~(uint32_t)RCC_CFGR_I2SSRC;
    }


    plln = (uint32_t)(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6) & (RCC_PLLI2SCFGR_PLLI2SN >> 6));



    pllr = (uint32_t)(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28) & (RCC_PLLI2SCFGR_PLLI2SR >> 28));



    pllm = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM);


    i2sclk = (uint32_t)(((HSE_VALUE / pllm) * plln) / pllr);



    if(I2S_InitStruct->I2S_MCLKOutput == I2S_MCLKOutput_Enable)
    {

      tmp = (uint16_t)(((((i2sclk / 256) * 10) / I2S_InitStruct->I2S_AudioFreq)) + 5);
    }
    else
    {

      tmp = (uint16_t)(((((i2sclk / (32 * packetlength)) *10 ) / I2S_InitStruct->I2S_AudioFreq)) + 5);
    }


    tmp = tmp / 10;


    i2sodd = (uint16_t)(tmp & (uint16_t)0x0001);


    i2sdiv = (uint16_t)((tmp - i2sodd) / 2);


    i2sodd = (uint16_t) (i2sodd << 8);
  }


  if ((i2sdiv < 2) || (i2sdiv > 0xFF))
  {

    i2sdiv = 2;
    i2sodd = 0;
  }


  SPIx->I2SPR = (uint16_t)((uint16_t)i2sdiv | (uint16_t)(i2sodd | (uint16_t)I2S_InitStruct->I2S_MCLKOutput));


  tmpreg |= (uint16_t)((uint16_t)SPI_I2SCFGR_I2SMOD | (uint16_t)(I2S_InitStruct->I2S_Mode | (uint16_t)(I2S_InitStruct->I2S_Standard | (uint16_t)(I2S_InitStruct->I2S_DataFormat | (uint16_t)I2S_InitStruct->I2S_CPOL))));




  SPIx->I2SCFGR = tmpreg;
}
