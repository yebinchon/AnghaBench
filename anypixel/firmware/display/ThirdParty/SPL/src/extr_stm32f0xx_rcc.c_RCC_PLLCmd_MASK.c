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
struct TYPE_2__ {int /*<<< orphan*/  CR; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* RCC ; 
 int /*<<< orphan*/  RCC_CR_PLLON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(FunctionalState NewState)
{
  /* Check the parameters */
  FUNC1(FUNC0(NewState));
  
  if (NewState != DISABLE)
  {
    RCC->CR |= RCC_CR_PLLON;
  }
  else
  {
    RCC->CR &= ~RCC_CR_PLLON;
  }
}