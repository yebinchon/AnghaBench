
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; int OPTKEYR; } ;


 TYPE_1__* FLASH ;
 int FLASH_CR_OPTWRE ;
 int FLASH_OPTKEY1 ;
 int FLASH_OPTKEY2 ;
 int RESET ;

void FLASH_OB_Unlock(void)
{
  if((FLASH->CR & FLASH_CR_OPTWRE) == RESET)
  {

    FLASH->OPTKEYR = FLASH_OPTKEY1;
    FLASH->OPTKEYR = FLASH_OPTKEY2;
  }
}
