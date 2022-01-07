
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; } ;


 TYPE_1__* CRYP ;
 int CRYP_CR_FFLUSH ;

void CRYP_FIFOFlush(void)
{

  CRYP->CR |= CRYP_CR_FFLUSH;
}
