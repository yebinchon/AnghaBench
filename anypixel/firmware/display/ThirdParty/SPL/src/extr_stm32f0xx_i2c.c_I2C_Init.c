
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int I2C_DigitalFilter; int I2C_Mode; int I2C_Ack; int I2C_Timing; scalar_t__ I2C_OwnAddress1; scalar_t__ I2C_AcknowledgedAddress; scalar_t__ I2C_AnalogFilter; } ;
struct TYPE_6__ {int CR1; int TIMINGR; int OAR1; int OAR2; int CR2; } ;
typedef TYPE_1__ I2C_TypeDef ;
typedef TYPE_2__ I2C_InitTypeDef ;


 int CR1_CLEAR_MASK ;
 int CR2_CLEAR_MASK ;
 int I2C_CR1_PE ;
 int I2C_OAR1_OA1EN ;
 int IS_I2C_ACK (int) ;
 int IS_I2C_ACKNOWLEDGE_ADDRESS (scalar_t__) ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int IS_I2C_ANALOG_FILTER (scalar_t__) ;
 int IS_I2C_DIGITAL_FILTER (int) ;
 int IS_I2C_MODE (int) ;
 int IS_I2C_OWN_ADDRESS1 (scalar_t__) ;
 int TIMING_CLEAR_MASK ;
 int assert_param (int ) ;

void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_I2C_ANALOG_FILTER(I2C_InitStruct->I2C_AnalogFilter));
  assert_param(IS_I2C_DIGITAL_FILTER(I2C_InitStruct->I2C_DigitalFilter));
  assert_param(IS_I2C_MODE(I2C_InitStruct->I2C_Mode));
  assert_param(IS_I2C_OWN_ADDRESS1(I2C_InitStruct->I2C_OwnAddress1));
  assert_param(IS_I2C_ACK(I2C_InitStruct->I2C_Ack));
  assert_param(IS_I2C_ACKNOWLEDGE_ADDRESS(I2C_InitStruct->I2C_AcknowledgedAddress));


  I2Cx->CR1 &= (uint32_t)~((uint32_t)I2C_CR1_PE);



  tmpreg = I2Cx->CR1;

  tmpreg &= CR1_CLEAR_MASK;



  tmpreg |= (uint32_t)I2C_InitStruct->I2C_AnalogFilter |(I2C_InitStruct->I2C_DigitalFilter << 8);


  I2Cx->CR1 = tmpreg;





  I2Cx->TIMINGR = I2C_InitStruct->I2C_Timing & TIMING_CLEAR_MASK;


  I2Cx->CR1 |= I2C_CR1_PE;



  tmpreg = 0;

  I2Cx->OAR1 = (uint32_t)tmpreg;

  I2Cx->OAR2 = (uint32_t)tmpreg;



  tmpreg = (uint32_t)((uint32_t)I2C_InitStruct->I2C_AcknowledgedAddress | (uint32_t)I2C_InitStruct->I2C_OwnAddress1);


  I2Cx->OAR1 = tmpreg;

  I2Cx->OAR1 |= I2C_OAR1_OA1EN;




  tmpreg = I2C_InitStruct->I2C_Mode;

  I2Cx->CR1 |= tmpreg;



  tmpreg = I2Cx->CR2;

  tmpreg &= CR2_CLEAR_MASK;


  tmpreg |= I2C_InitStruct->I2C_Ack;

  I2Cx->CR2 = tmpreg;
}
