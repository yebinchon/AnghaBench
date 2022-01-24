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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int CFGR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* RCC ; 
 int RCC_CFGR_MCO ; 
 int RCC_CFGR_MCO_PRE ; 
 int RCC_CFGR_PLLNODIV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t RCC_MCOSource, uint32_t RCC_MCOPrescaler)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC2(FUNC1(RCC_MCOSource));
  FUNC2(FUNC0(RCC_MCOPrescaler));
    
  /* Get CFGR value */  
  tmpreg = RCC->CFGR;
  /* Clear MCOPRE[2:0] bits */
  tmpreg &= ~(RCC_CFGR_MCO_PRE | RCC_CFGR_MCO | RCC_CFGR_PLLNODIV);
  /* Set the RCC_MCOSource and RCC_MCOPrescaler */
  tmpreg |= (RCC_MCOPrescaler | ((uint32_t)RCC_MCOSource<<24));
  /* Store the new value */
  RCC->CFGR = tmpreg;
}