
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CFGR; } ;


 TYPE_1__* CEC ;

void CEC_OwnAddressClear(void)
{

  CEC->CFGR = 0x0;
}
