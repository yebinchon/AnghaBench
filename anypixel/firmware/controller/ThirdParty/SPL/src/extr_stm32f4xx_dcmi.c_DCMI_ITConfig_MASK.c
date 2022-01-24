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
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ IER; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 TYPE_1__* DCMI ; 
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint16_t DCMI_IT, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC0(DCMI_IT));
  FUNC2(FUNC1(NewState));
  
  if (NewState != DISABLE)
  {
    /* Enable the Interrupt sources */
    DCMI->IER |= DCMI_IT;
  }
  else
  {
    /* Disable the Interrupt sources */
    DCMI->IER &= (uint16_t)(~DCMI_IT);
  }  
}