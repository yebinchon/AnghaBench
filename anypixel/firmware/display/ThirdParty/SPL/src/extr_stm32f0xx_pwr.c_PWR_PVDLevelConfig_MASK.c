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
struct TYPE_2__ {int /*<<< orphan*/  CR; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_PLS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* PWR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t PWR_PVDLevel)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC1(FUNC0(PWR_PVDLevel));
  
  tmpreg = PWR->CR;
  
  /* Clear PLS[7:5] bits */
  tmpreg &= CR_PLS_MASK;
  
  /* Set PLS[7:5] bits according to PWR_PVDLevel value */
  tmpreg |= PWR_PVDLevel;
  
  /* Store the new value */
  PWR->CR = tmpreg;
}