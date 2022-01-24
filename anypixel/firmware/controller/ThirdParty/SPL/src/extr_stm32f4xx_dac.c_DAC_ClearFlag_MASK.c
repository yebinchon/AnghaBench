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
struct TYPE_2__ {int SR; } ;

/* Variables and functions */
 TYPE_1__* DAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t DAC_Channel, uint32_t DAC_FLAG)
{
  /* Check the parameters */
  FUNC2(FUNC0(DAC_Channel));
  FUNC2(FUNC1(DAC_FLAG));

  /* Clear the selected DAC flags */
  DAC->SR = (DAC_FLAG << DAC_Channel);
}