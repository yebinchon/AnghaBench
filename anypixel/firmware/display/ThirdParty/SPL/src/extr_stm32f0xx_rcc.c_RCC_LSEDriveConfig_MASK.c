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
struct TYPE_2__ {int /*<<< orphan*/  BDCR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* RCC ; 
 int /*<<< orphan*/  RCC_BDCR_LSEDRV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t RCC_LSEDrive)
{
  /* Check the parameters */
  FUNC1(FUNC0(RCC_LSEDrive));
  
  /* Clear LSEDRV[1:0] bits */
  RCC->BDCR &= ~(RCC_BDCR_LSEDRV);

  /* Set the LSE Drive */
  RCC->BDCR |= RCC_LSEDrive;
}