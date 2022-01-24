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
typedef  int uint32_t ;
struct TYPE_2__ {int CSR; } ;

/* Variables and functions */
 TYPE_1__* COMP ; 
 int COMP_CSR_COMP1LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t COMP_Selection)
{
  /* Check the parameter */
  FUNC1(FUNC0(COMP_Selection));

  /* Set the lock bit corresponding to selected comparator */
  COMP->CSR |= (uint32_t) (COMP_CSR_COMP1LOCK<<COMP_Selection);
}