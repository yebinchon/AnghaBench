
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int GPIO_PuPd; int GPIO_OType; int GPIO_Speed; int GPIO_Mode; int GPIO_Pin; } ;
typedef TYPE_1__ GPIO_InitTypeDef ;


 int GPIO_Mode_IN ;
 int GPIO_OType_PP ;
 int GPIO_Pin_All ;
 int GPIO_PuPd_NOPULL ;
 int GPIO_Speed_2MHz ;

void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct)
{

  GPIO_InitStruct->GPIO_Pin = GPIO_Pin_All;
  GPIO_InitStruct->GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStruct->GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_InitStruct->GPIO_OType = GPIO_OType_PP;
  GPIO_InitStruct->GPIO_PuPd = GPIO_PuPd_NOPULL;
}
