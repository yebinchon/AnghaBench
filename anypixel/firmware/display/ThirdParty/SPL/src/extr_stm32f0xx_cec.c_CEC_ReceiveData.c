
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int RXDR; } ;


 TYPE_1__* CEC ;

uint8_t CEC_ReceiveData(void)
{

  return (uint8_t)(CEC->RXDR);
}
