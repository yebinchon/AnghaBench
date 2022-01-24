#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int* ipv6_addr; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(IP *a, UCHAR *mac)
{
	UCHAR tmp[8];
	// Validate arguments
	if (a == NULL || mac == NULL)
	{
		return;
	}

	FUNC1(tmp, mac);

	FUNC2(a);
	a->ipv6_addr[0] = 0xfe;
	a->ipv6_addr[1] = 0x80;

	FUNC0(&a->ipv6_addr[8], tmp, 8);
}