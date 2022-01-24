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
struct TYPE_2__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dplanes2mapplanes ; 
 TYPE_1__* q3_dplanes ; 
 int q3_numplanes ; 

void FUNC1(void)
{
	int i;

	for (i = 0; i < q3_numplanes; i++)
	{
		dplanes2mapplanes[i] = FUNC0(q3_dplanes[i].normal, q3_dplanes[i].dist);
	} //end for
}