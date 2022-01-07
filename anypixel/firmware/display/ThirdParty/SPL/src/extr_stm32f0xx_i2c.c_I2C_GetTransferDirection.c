
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int ISR; } ;
typedef TYPE_1__ I2C_TypeDef ;


 int I2C_Direction_Receiver ;
 int I2C_Direction_Transmitter ;
 int I2C_ISR_DIR ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t I2C_GetTransferDirection(I2C_TypeDef* I2Cx)
{
  uint32_t tmpreg = 0;
  uint16_t direction = 0;


  assert_param(IS_I2C_ALL_PERIPH(I2Cx));


  tmpreg = (uint32_t)(I2Cx->ISR & I2C_ISR_DIR);


  if (tmpreg == 0)
  {

    direction = I2C_Direction_Transmitter;
  }
  else
  {

    direction = I2C_Direction_Receiver;
  }
  return direction;
}
