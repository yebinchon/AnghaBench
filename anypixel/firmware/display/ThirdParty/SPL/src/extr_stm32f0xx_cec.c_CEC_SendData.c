
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int TXDR; } ;


 TYPE_1__* CEC ;

void CEC_SendData(uint8_t Data)
{

  CEC->TXDR = Data;
}
