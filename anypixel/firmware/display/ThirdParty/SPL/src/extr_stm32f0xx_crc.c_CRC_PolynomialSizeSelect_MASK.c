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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CR; } ;

/* Variables and functions */
 TYPE_1__* CRC ; 
 scalar_t__ CRC_CR_POLSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t CRC_PolSize)
{
  uint32_t tmpcr = 0;

  /* Check the parameter */
  FUNC1(FUNC0(CRC_PolSize));

  /* Get CR register value */
  tmpcr = CRC->CR;

  /* Reset POL_SIZE bits */
  tmpcr &= (uint32_t)~((uint32_t)CRC_CR_POLSIZE);
  /* Set the polynomial size */
  tmpcr |= (uint32_t)CRC_PolSize;

  /* Write to CR register */
  CRC->CR = (uint32_t)tmpcr;
}