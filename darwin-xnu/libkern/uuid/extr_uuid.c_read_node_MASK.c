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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (int*) ; 

__attribute__((used)) static void
FUNC2(uint8_t *node)
{
#if NETWORKING
	if (uuid_get_ethernet(node) == 0)
		return;
#endif /* NETWORKING */

	FUNC0(node, 6);
	node[0] |= 0x01;
}