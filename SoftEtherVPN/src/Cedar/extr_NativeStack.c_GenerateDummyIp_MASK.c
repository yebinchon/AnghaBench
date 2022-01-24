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
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_4__ {int* addr; } ;
typedef  int /*<<< orphan*/  PRAND ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(PRAND *p, IP *ip)
{
	UINT i;
	if (p == NULL || ip == NULL)
	{
		return;
	}

	FUNC1(ip, sizeof(IP));

	for (i = 1;i < 4;i++)
	{
		UINT v = 0;
		while (true)
		{
			v = FUNC0(p) % 256;
			if (v >= 1 && v <= 254)
			{
				break;
			}
		}

		ip->addr[i] = (UCHAR)v;
	}

	ip->addr[0] = 127;
}