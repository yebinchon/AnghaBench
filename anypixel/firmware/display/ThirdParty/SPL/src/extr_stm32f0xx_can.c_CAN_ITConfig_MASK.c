#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  IER; } ;
typedef  scalar_t__ FunctionalState ;
typedef  TYPE_1__ CAN_TypeDef ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC3(FUNC0(CANx));
  FUNC3(FUNC1(CAN_IT));
  FUNC3(FUNC2(NewState));

  if (NewState != DISABLE)
  {
    /* Enable the selected CANx interrupt */
    CANx->IER |= CAN_IT;
  }
  else
  {
    /* Disable the selected CANx interrupt */
    CANx->IER &= ~CAN_IT;
  }
}