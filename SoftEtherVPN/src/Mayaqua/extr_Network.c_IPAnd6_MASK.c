#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_7__ {int* ipv6_addr; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(IP *dst, IP *a, IP *b)
{
	UINT i;
	// Validate arguments
	if (dst == NULL || FUNC0(a) == false || FUNC0(b) == false)
	{
		FUNC1(dst);
		return;
	}

	FUNC1(dst);
	for (i = 0;i < 16;i++)
	{
		dst->ipv6_addr[i] = a->ipv6_addr[i] & b->ipv6_addr[i];
	}
}