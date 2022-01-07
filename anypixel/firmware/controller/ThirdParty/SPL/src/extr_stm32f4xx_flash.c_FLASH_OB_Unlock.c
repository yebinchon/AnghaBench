
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int OPTCR; int OPTKEYR; } ;


 TYPE_1__* FLASH ;
 int FLASH_OPTCR_OPTLOCK ;
 int FLASH_OPT_KEY1 ;
 int FLASH_OPT_KEY2 ;
 int RESET ;

void FLASH_OB_Unlock(void)
{
  if((FLASH->OPTCR & FLASH_OPTCR_OPTLOCK) != RESET)
  {

    FLASH->OPTKEYR = FLASH_OPT_KEY1;
    FLASH->OPTKEYR = FLASH_OPT_KEY2;
  }
}
