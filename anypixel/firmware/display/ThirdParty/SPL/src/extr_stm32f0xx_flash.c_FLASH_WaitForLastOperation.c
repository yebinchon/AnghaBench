
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ FLASH_Status ;


 scalar_t__ FLASH_BUSY ;
 scalar_t__ FLASH_COMPLETE ;
 scalar_t__ FLASH_GetStatus () ;
 scalar_t__ FLASH_TIMEOUT ;

FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout)
{
  FLASH_Status status = FLASH_COMPLETE;


  status = FLASH_GetStatus();


  while((status == FLASH_BUSY) && (Timeout != 0x00))
  {
    status = FLASH_GetStatus();
    Timeout--;
  }

  if(Timeout == 0x00 )
  {
    status = FLASH_TIMEOUT;
  }

  return status;
}
