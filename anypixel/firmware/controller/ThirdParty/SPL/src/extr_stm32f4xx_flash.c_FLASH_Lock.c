
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; } ;


 TYPE_1__* FLASH ;
 int FLASH_CR_LOCK ;

void FLASH_Lock(void)
{

  FLASH->CR |= FLASH_CR_LOCK;
}
