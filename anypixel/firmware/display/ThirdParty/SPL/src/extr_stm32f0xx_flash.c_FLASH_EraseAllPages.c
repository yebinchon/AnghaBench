
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; } ;
typedef scalar_t__ FLASH_Status ;


 TYPE_1__* FLASH ;
 scalar_t__ FLASH_COMPLETE ;
 int FLASH_CR_MER ;
 int FLASH_CR_STRT ;
 int FLASH_ER_PRG_TIMEOUT ;
 scalar_t__ FLASH_WaitForLastOperation (int ) ;

FLASH_Status FLASH_EraseAllPages(void)
{
  FLASH_Status status = FLASH_COMPLETE;


  status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);

  if(status == FLASH_COMPLETE)
  {

     FLASH->CR |= FLASH_CR_MER;
     FLASH->CR |= FLASH_CR_STRT;


    status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);


    FLASH->CR &= ~FLASH_CR_MER;
  }


  return status;
}
