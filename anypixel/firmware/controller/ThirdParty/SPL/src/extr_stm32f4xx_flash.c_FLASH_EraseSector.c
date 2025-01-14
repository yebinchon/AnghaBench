
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;
typedef scalar_t__ FLASH_Status ;


 int CR_PSIZE_MASK ;
 TYPE_1__* FLASH ;
 scalar_t__ FLASH_COMPLETE ;
 int FLASH_CR_SER ;
 int FLASH_CR_STRT ;
 int FLASH_PSIZE_BYTE ;
 int FLASH_PSIZE_DOUBLE_WORD ;
 int FLASH_PSIZE_HALF_WORD ;
 int FLASH_PSIZE_WORD ;
 scalar_t__ FLASH_WaitForLastOperation () ;
 int IS_FLASH_SECTOR (int) ;
 int IS_VOLTAGERANGE (scalar_t__) ;
 int SECTOR_MASK ;
 scalar_t__ VoltageRange_1 ;
 scalar_t__ VoltageRange_2 ;
 scalar_t__ VoltageRange_3 ;
 int assert_param (int ) ;

FLASH_Status FLASH_EraseSector(uint32_t FLASH_Sector, uint8_t VoltageRange)
{
  uint32_t tmp_psize = 0x0;
  FLASH_Status status = FLASH_COMPLETE;


  assert_param(IS_FLASH_SECTOR(FLASH_Sector));
  assert_param(IS_VOLTAGERANGE(VoltageRange));

  if(VoltageRange == VoltageRange_1)
  {
     tmp_psize = FLASH_PSIZE_BYTE;
  }
  else if(VoltageRange == VoltageRange_2)
  {
    tmp_psize = FLASH_PSIZE_HALF_WORD;
  }
  else if(VoltageRange == VoltageRange_3)
  {
    tmp_psize = FLASH_PSIZE_WORD;
  }
  else
  {
    tmp_psize = FLASH_PSIZE_DOUBLE_WORD;
  }

  status = FLASH_WaitForLastOperation();

  if(status == FLASH_COMPLETE)
  {

    FLASH->CR &= CR_PSIZE_MASK;
    FLASH->CR |= tmp_psize;
    FLASH->CR &= SECTOR_MASK;
    FLASH->CR |= FLASH_CR_SER | FLASH_Sector;
    FLASH->CR |= FLASH_CR_STRT;


    status = FLASH_WaitForLastOperation();


    FLASH->CR &= (~FLASH_CR_SER);
    FLASH->CR &= SECTOR_MASK;
  }

  return status;
}
