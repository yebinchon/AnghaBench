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
struct TYPE_2__ {int ISR; } ;
typedef  int /*<<< orphan*/  ITStatus ;

/* Variables and functions */
 TYPE_1__* CRS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ITStatus FUNC2(uint32_t CRS_IT)
{
  /* Check the parameters */
  FUNC1(FUNC0(CRS_IT));

  return ((ITStatus)(CRS->ISR & CRS_IT));
}