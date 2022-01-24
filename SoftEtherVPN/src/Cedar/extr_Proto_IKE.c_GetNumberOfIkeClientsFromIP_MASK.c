#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  ClientIP; } ;
struct TYPE_5__ {int /*<<< orphan*/  ClientList; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ IKE_SERVER ;
typedef  TYPE_2__ IKE_CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

UINT FUNC3(IKE_SERVER *ike, IP *client_ip)
{
	UINT i, num;
	// Validate arguments
	if (ike == NULL || client_ip == NULL)
	{
		return 0;
	}

	num = 0;

	for (i = 0;i < FUNC2(ike->ClientList);i++)
	{
		IKE_CLIENT *c = FUNC1(ike->ClientList, i);

		if (FUNC0(&c->ClientIP, client_ip) == 0)
		{
			num++;
		}
	}

	return num;
}