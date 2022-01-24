#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR; } ;
struct TYPE_3__ {scalar_t__ SCR; } ;

/* Variables and functions */
 scalar_t__ CR_DS_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__* PWR ; 
 scalar_t__ PWR_STOPEntry_WFE ; 
 scalar_t__ PWR_STOPEntry_WFI ; 
 TYPE_1__* SCB ; 
 scalar_t__ SCB_SCR_SLEEPDEEP_Msk ; 
 scalar_t__ SCB_SCR_SLEEPONEXIT_Msk ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC4(FUNC0(PWR_Regulator));
  FUNC4(FUNC1(PWR_STOPEntry));
  
  /* Select the regulator state in STOP mode ---------------------------------*/
  tmpreg = PWR->CR;
  /* Clear PDDS and LPDSR bits */
  tmpreg &= CR_DS_MASK;
  
  /* Set LPDSR bit according to PWR_Regulator value */
  tmpreg |= PWR_Regulator;
  
  /* Store the new value */
  PWR->CR = tmpreg;
  
  /* Set SLEEPDEEP bit of Cortex-M0 System Control Register */
  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
  
  /* Select STOP mode entry --------------------------------------------------*/
  if(PWR_STOPEntry == PWR_STOPEntry_WFI)
  {
    /* Request Wait For Interrupt */
    FUNC3();
    /* Reset SLEEPDEEP bit of Cortex System Control Register */
    SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP_Msk); 
  }
  else if (PWR_STOPEntry == PWR_STOPEntry_WFE)
  {
    /* Request Wait For Event */
    FUNC2();
    /* Reset SLEEPDEEP bit of Cortex System Control Register */
    SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP_Msk);   
  }
  else
  {
    /* Set SLEEP on exit bit of Cortex-M0 System Control Register */
    SCB->SCR |= SCB_SCR_SLEEPONEXIT_Msk;
  }
}