
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int I2C_AcknowledgedAddress; int I2C_Ack; scalar_t__ I2C_OwnAddress1; int I2C_Mode; scalar_t__ I2C_DigitalFilter; int I2C_AnalogFilter; scalar_t__ I2C_Timing; } ;
typedef TYPE_1__ I2C_InitTypeDef ;


 int I2C_Ack_Disable ;
 int I2C_AcknowledgedAddress_7bit ;
 int I2C_AnalogFilter_Enable ;
 int I2C_Mode_I2C ;

void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct)
{


  I2C_InitStruct->I2C_Timing = 0;

  I2C_InitStruct->I2C_AnalogFilter = I2C_AnalogFilter_Enable;

  I2C_InitStruct->I2C_DigitalFilter = 0;

  I2C_InitStruct->I2C_Mode = I2C_Mode_I2C;

  I2C_InitStruct->I2C_OwnAddress1 = 0;

  I2C_InitStruct->I2C_Ack = I2C_Ack_Disable;

  I2C_InitStruct->I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
}
