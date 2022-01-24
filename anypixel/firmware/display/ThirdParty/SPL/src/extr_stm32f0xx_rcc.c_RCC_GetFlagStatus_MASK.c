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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int CR; int BDCR; int CSR; int CR2; } ;
typedef  scalar_t__ FlagStatus ;

/* Variables and functions */
 int FLAG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* RCC ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

FlagStatus FUNC2(uint8_t RCC_FLAG)
{
  uint32_t tmp = 0;
  uint32_t statusreg = 0;
  FlagStatus bitstatus = RESET;

  /* Check the parameters */
  FUNC1(FUNC0(RCC_FLAG));

  /* Get the RCC register index */
  tmp = RCC_FLAG >> 5;

  if (tmp == 0)               /* The flag to check is in CR register */
  {
    statusreg = RCC->CR;
  }
  else if (tmp == 1)          /* The flag to check is in BDCR register */
  {
    statusreg = RCC->BDCR;
  }
  else if (tmp == 2)          /* The flag to check is in CSR register */
  {
    statusreg = RCC->CSR;
  }
  else                        /* The flag to check is in CR2 register */
  {
    statusreg = RCC->CR2;
  }    

  /* Get the flag position */
  tmp = RCC_FLAG & FLAG_MASK;

  if ((statusreg & ((uint32_t)1 << tmp)) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  /* Return the flag status */
  return bitstatus;
}