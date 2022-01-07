
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DR; int POL; int IDR; int INIT; int CR; } ;


 TYPE_1__* CRC ;
 int CRC_CR_RESET ;

void CRC_DeInit(void)
{

  CRC->DR = 0xFFFFFFFF;


  CRC->POL = 0x04C11DB7;


  CRC->IDR = 0x00;


  CRC->INIT = 0xFFFFFFFF;


  CRC->CR = CRC_CR_RESET;
}
