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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  IER; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 TYPE_1__* CEC ; 
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint16_t CEC_IT, FunctionalState NewState)
{
  FUNC2(FUNC1(NewState));
  FUNC2(FUNC0(CEC_IT));

  if (NewState != DISABLE)
  {
    /* Enable the selected CEC interrupt */
    CEC->IER |= CEC_IT;
  }
  else
  {
    CEC_IT =~CEC_IT;
    /* Disable the selected CEC interrupt */
    CEC->IER &= CEC_IT;
  }
}