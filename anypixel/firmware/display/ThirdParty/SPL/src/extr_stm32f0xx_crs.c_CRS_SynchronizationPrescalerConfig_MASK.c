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
struct TYPE_2__ {int /*<<< orphan*/  CFGR; } ;

/* Variables and functions */
 TYPE_1__* CRS ; 
 int /*<<< orphan*/  CRS_CFGR_SYNCDIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t CRS_Prescaler)
{
  /* Check the parameters */
  FUNC1(FUNC0(CRS_Prescaler));
  
  /* Clear SYNCDIV[2:0] bits */
  CRS->CFGR &= ~CRS_CFGR_SYNCDIV;
  
  /* Set the CRS_CFGR_SYNCDIV[2:0] bits according to CRS_Prescaler value */
  CRS->CFGR |= CRS_Prescaler;
}