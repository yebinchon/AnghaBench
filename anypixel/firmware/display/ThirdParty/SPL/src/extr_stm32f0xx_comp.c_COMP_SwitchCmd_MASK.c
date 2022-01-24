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
struct TYPE_2__ {int /*<<< orphan*/  CSR; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 TYPE_1__* COMP ; 
 scalar_t__ COMP_CSR_COMP1SW1 ; 
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(FunctionalState NewState)
{
  /* Check the parameter */
  FUNC1(FUNC0(NewState));

  if (NewState != DISABLE)
  {
    /* Close SW1 switch */
    COMP->CSR |= (uint32_t) (COMP_CSR_COMP1SW1);
  }
  else
  {
    /* Open SW1 switch */
    COMP->CSR &= (uint32_t)(~COMP_CSR_COMP1SW1);
  }
}