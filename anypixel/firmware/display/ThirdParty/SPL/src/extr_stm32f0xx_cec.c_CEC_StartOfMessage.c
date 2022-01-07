
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; } ;


 TYPE_1__* CEC ;
 int CEC_CR_TXSOM ;

void CEC_StartOfMessage(void)
{

  CEC->CR |= CEC_CR_TXSOM;
}
