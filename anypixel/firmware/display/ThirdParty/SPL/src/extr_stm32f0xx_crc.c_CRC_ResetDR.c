
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; } ;


 TYPE_1__* CRC ;
 int CRC_CR_RESET ;

void CRC_ResetDR(void)
{

  CRC->CR |= CRC_CR_RESET;
}
