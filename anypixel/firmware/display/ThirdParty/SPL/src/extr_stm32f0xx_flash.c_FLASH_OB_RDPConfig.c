
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int CR; } ;
struct TYPE_3__ {int RDP; } ;
typedef scalar_t__ FLASH_Status ;


 TYPE_2__* FLASH ;
 scalar_t__ FLASH_COMPLETE ;
 int FLASH_CR_OPTER ;
 int FLASH_CR_OPTPG ;
 int FLASH_CR_STRT ;
 int FLASH_ER_PRG_TIMEOUT ;
 scalar_t__ FLASH_TIMEOUT ;
 scalar_t__ FLASH_WaitForLastOperation (int ) ;
 int IS_OB_RDP (int ) ;
 TYPE_1__* OB ;
 int assert_param (int ) ;

FLASH_Status FLASH_OB_RDPConfig(uint8_t OB_RDP)
{
  FLASH_Status status = FLASH_COMPLETE;


  assert_param(IS_OB_RDP(OB_RDP));
  status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);

  if(status == FLASH_COMPLETE)
  {
    FLASH->CR |= FLASH_CR_OPTER;
    FLASH->CR |= FLASH_CR_STRT;


    status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);

    if(status == FLASH_COMPLETE)
    {

      FLASH->CR &= ~FLASH_CR_OPTER;


      FLASH->CR |= FLASH_CR_OPTPG;

      OB->RDP = OB_RDP;


      status = FLASH_WaitForLastOperation(FLASH_ER_PRG_TIMEOUT);

      if(status != FLASH_TIMEOUT)
      {

        FLASH->CR &= ~FLASH_CR_OPTPG;
      }
    }
    else
    {
      if(status != FLASH_TIMEOUT)
      {

        FLASH->CR &= ~FLASH_CR_OPTER;
      }
    }
  }

  return status;
}
