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
struct TYPE_2__ {int PLLCFGR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* RCC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(uint32_t RCC_PLLSource, uint32_t PLLM, uint32_t PLLN, uint32_t PLLP, uint32_t PLLQ)
{
  /* Check the parameters */
  FUNC5(FUNC4(RCC_PLLSource));
  FUNC5(FUNC0(PLLM));
  FUNC5(FUNC1(PLLN));
  FUNC5(FUNC2(PLLP));
  FUNC5(FUNC3(PLLQ));

  RCC->PLLCFGR = PLLM | (PLLN << 6) | (((PLLP >> 1) -1) << 16) | (RCC_PLLSource) |
                 (PLLQ << 24);
}