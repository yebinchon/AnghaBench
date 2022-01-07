
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int I2S_Mode; int I2S_Standard; int I2S_DataFormat; scalar_t__ I2S_MCLKOutput; int I2S_AudioFreq; scalar_t__ I2S_CPOL; } ;
struct TYPE_9__ {int SYSCLK_Frequency; } ;
struct TYPE_8__ {int I2SCFGR; int I2SPR; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef TYPE_2__ RCC_ClocksTypeDef ;
typedef TYPE_3__ I2S_InitTypeDef ;


 int I2SCFGR_CLEAR_Mask ;
 int I2S_AudioFreq_Default ;
 int I2S_DataFormat_16b ;
 scalar_t__ I2S_MCLKOutput_Enable ;
 int IS_I2S_AUDIO_FREQ (int) ;
 int IS_I2S_CPOL (scalar_t__) ;
 int IS_I2S_DATA_FORMAT (int) ;
 int IS_I2S_MCLK_OUTPUT (scalar_t__) ;
 int IS_I2S_MODE (int) ;
 int IS_I2S_STANDARD (int) ;
 int IS_SPI_1_PERIPH (TYPE_1__*) ;
 int RCC_GetClocksFreq (TYPE_2__*) ;
 int SPI_I2SCFGR_I2SMOD ;
 int assert_param (int ) ;

void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct)
{
  uint16_t tmpreg = 0, i2sdiv = 2, i2sodd = 0, packetlength = 1;
  uint32_t tmp = 0;
  RCC_ClocksTypeDef RCC_Clocks;
  uint32_t sourceclock = 0;


  assert_param(IS_SPI_1_PERIPH(SPIx));
  assert_param(IS_I2S_MODE(I2S_InitStruct->I2S_Mode));
  assert_param(IS_I2S_STANDARD(I2S_InitStruct->I2S_Standard));
  assert_param(IS_I2S_DATA_FORMAT(I2S_InitStruct->I2S_DataFormat));
  assert_param(IS_I2S_MCLK_OUTPUT(I2S_InitStruct->I2S_MCLKOutput));
  assert_param(IS_I2S_AUDIO_FREQ(I2S_InitStruct->I2S_AudioFreq));
  assert_param(IS_I2S_CPOL(I2S_InitStruct->I2S_CPOL));



  SPIx->I2SCFGR &= I2SCFGR_CLEAR_Mask;
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


    RCC_GetClocksFreq(&RCC_Clocks);


    sourceclock = RCC_Clocks.SYSCLK_Frequency;


    if(I2S_InitStruct->I2S_MCLKOutput == I2S_MCLKOutput_Enable)
    {

      tmp = (uint16_t)(((((sourceclock / 256) * 10) / I2S_InitStruct->I2S_AudioFreq)) + 5);
    }
    else
    {

      tmp = (uint16_t)(((((sourceclock / (32 * packetlength)) *10 ) / I2S_InitStruct->I2S_AudioFreq)) + 5);
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


  SPIx->I2SPR = (uint16_t)(i2sdiv | (uint16_t)(i2sodd | (uint16_t)I2S_InitStruct->I2S_MCLKOutput));


  tmpreg |= (uint16_t)(SPI_I2SCFGR_I2SMOD | (uint16_t)(I2S_InitStruct->I2S_Mode | (uint16_t)(I2S_InitStruct->I2S_Standard | (uint16_t)(I2S_InitStruct->I2S_DataFormat | (uint16_t)I2S_InitStruct->I2S_CPOL))));




  SPIx->I2SCFGR = tmpreg;
}
