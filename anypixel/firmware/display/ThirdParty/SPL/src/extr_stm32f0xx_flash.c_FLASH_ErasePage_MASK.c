#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  CR; int /*<<< orphan*/  AR; } ;
typedef  scalar_t__ FLASH_Status ;

/* Variables and functions */
 TYPE_1__* FLASH ; 
 scalar_t__ FLASH_COMPLETE ; 
 int /*<<< orphan*/  FLASH_CR_PER ; 
 int /*<<< orphan*/  FLASH_CR_STRT ; 
 int /*<<< orphan*/  FLASH_ER_PRG_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

FLASH_Status FUNC3(uint32_t Page_Address)
{
  FLASH_Status status = FLASH_COMPLETE;

  /* Check the parameters */
  FUNC2(FUNC1(Page_Address));
 
  /* Wait for last operation to be completed */
  status = FUNC0(FLASH_ER_PRG_TIMEOUT);
  
  if(status == FLASH_COMPLETE)
  { 
    /* If the previous operation is completed, proceed to erase the page */
    FLASH->CR |= FLASH_CR_PER;
    FLASH->AR  = Page_Address;
    FLASH->CR |= FLASH_CR_STRT;
    
    /* Wait for last operation to be completed */
    status = FUNC0(FLASH_ER_PRG_TIMEOUT);
    
    /* Disable the PER Bit */
    FLASH->CR &= ~FLASH_CR_PER;
  }
    
  /* Return the Erase Status */
  return status;
}