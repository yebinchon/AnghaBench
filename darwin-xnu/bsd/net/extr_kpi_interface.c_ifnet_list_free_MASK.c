#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ifnet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2(ifnet_t *interfaces)
{
	int i;

	if (interfaces == NULL)
		return;

	for (i = 0; interfaces[i]; i++)
		FUNC1(interfaces[i]);

	FUNC0(interfaces, M_TEMP);
}