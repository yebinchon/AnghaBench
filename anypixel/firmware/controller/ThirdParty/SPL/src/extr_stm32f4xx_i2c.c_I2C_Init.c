
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int I2C_ClockSpeed; scalar_t__ I2C_DutyCycle; int I2C_OwnAddress1; int I2C_Ack; int I2C_AcknowledgedAddress; scalar_t__ I2C_Mode; } ;
struct TYPE_9__ {int CR2; int CR1; int TRISE; int CCR; int OAR1; } ;
struct TYPE_8__ {int PCLK1_Frequency; } ;
typedef TYPE_1__ RCC_ClocksTypeDef ;
typedef TYPE_2__ I2C_TypeDef ;
typedef TYPE_3__ I2C_InitTypeDef ;


 int CR1_CLEAR_MASK ;
 int I2C_CCR_CCR ;
 int I2C_CCR_FS ;
 int I2C_CR1_PE ;
 scalar_t__ I2C_CR2_FREQ ;
 int I2C_DutyCycle_16_9 ;
 scalar_t__ I2C_DutyCycle_2 ;
 int IS_I2C_ACKNOWLEDGE_ADDRESS (int) ;
 int IS_I2C_ACK_STATE (int) ;
 int IS_I2C_ALL_PERIPH (TYPE_2__*) ;
 int IS_I2C_CLOCK_SPEED (int) ;
 int IS_I2C_DUTY_CYCLE (scalar_t__) ;
 int IS_I2C_MODE (scalar_t__) ;
 int IS_I2C_OWN_ADDRESS1 (int) ;
 int RCC_GetClocksFreq (TYPE_1__*) ;
 int assert_param (int ) ;

void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct)
{
  uint16_t tmpreg = 0, freqrange = 0;
  uint16_t result = 0x04;
  uint32_t pclk1 = 8000000;
  RCC_ClocksTypeDef rcc_clocks;

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_CLOCK_SPEED(I2C_InitStruct->I2C_ClockSpeed));
  assert_param(IS_I2C_MODE(I2C_InitStruct->I2C_Mode));
  assert_param(IS_I2C_DUTY_CYCLE(I2C_InitStruct->I2C_DutyCycle));
  assert_param(IS_I2C_OWN_ADDRESS1(I2C_InitStruct->I2C_OwnAddress1));
  assert_param(IS_I2C_ACK_STATE(I2C_InitStruct->I2C_Ack));
  assert_param(IS_I2C_ACKNOWLEDGE_ADDRESS(I2C_InitStruct->I2C_AcknowledgedAddress));



  tmpreg = I2Cx->CR2;

  tmpreg &= (uint16_t)~((uint16_t)I2C_CR2_FREQ);

  RCC_GetClocksFreq(&rcc_clocks);
  pclk1 = rcc_clocks.PCLK1_Frequency;

  freqrange = (uint16_t)(pclk1 / 1000000);
  tmpreg |= freqrange;

  I2Cx->CR2 = tmpreg;



  I2Cx->CR1 &= (uint16_t)~((uint16_t)I2C_CR1_PE);


  tmpreg = 0;


  if (I2C_InitStruct->I2C_ClockSpeed <= 100000)
  {

    result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed << 1));

    if (result < 0x04)
    {

      result = 0x04;
    }

    tmpreg |= result;

    I2Cx->TRISE = freqrange + 1;
  }



  else
  {
    if (I2C_InitStruct->I2C_DutyCycle == I2C_DutyCycle_2)
    {

      result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed * 3));
    }
    else
    {

      result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed * 25));

      result |= I2C_DutyCycle_16_9;
    }


    if ((result & I2C_CCR_CCR) == 0)
    {

      result |= (uint16_t)0x0001;
    }

    tmpreg |= (uint16_t)(result | I2C_CCR_FS);

    I2Cx->TRISE = (uint16_t)(((freqrange * (uint16_t)300) / (uint16_t)1000) + (uint16_t)1);
  }


  I2Cx->CCR = tmpreg;

  I2Cx->CR1 |= I2C_CR1_PE;



  tmpreg = I2Cx->CR1;

  tmpreg &= CR1_CLEAR_MASK;



  tmpreg |= (uint16_t)((uint32_t)I2C_InitStruct->I2C_Mode | I2C_InitStruct->I2C_Ack);

  I2Cx->CR1 = tmpreg;



  I2Cx->OAR1 = (I2C_InitStruct->I2C_AcknowledgedAddress | I2C_InitStruct->I2C_OwnAddress1);
}
