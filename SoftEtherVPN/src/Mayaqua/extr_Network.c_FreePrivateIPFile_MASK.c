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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PRIVATE_IP_SUBNET ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_private_ip_list ; 
 int g_use_privateip_file ; 

void FUNC4()
{
	if (g_private_ip_list != NULL)
	{
		LIST *o = g_private_ip_list;
		UINT i;

		g_private_ip_list = NULL;

		for (i = 0;i < FUNC2(o);i++)
		{
			PRIVATE_IP_SUBNET *p = FUNC1(o, i);

			FUNC0(p);
		}

		FUNC3(o);
	}

	g_use_privateip_file = false;
}