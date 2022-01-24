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
struct TYPE_2__ {int CFGR; } ;

/* Variables and functions */
 int CFGR_MCO1_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* RCC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t RCC_MCO1Source, uint32_t RCC_MCO1Div)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC2(FUNC1(RCC_MCO1Source));
  FUNC2(FUNC0(RCC_MCO1Div));  

  tmpreg = RCC->CFGR;

  /* Clear MCO1[1:0] and MCO1PRE[2:0] bits */
  tmpreg &= CFGR_MCO1_RESET_MASK;

  /* Select MCO1 clock source and prescaler */
  tmpreg |= RCC_MCO1Source | RCC_MCO1Div;

  /* Store the new value */
  RCC->CFGR = tmpreg;  
}