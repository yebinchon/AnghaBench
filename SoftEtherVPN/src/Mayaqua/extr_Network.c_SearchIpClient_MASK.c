#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_6__ {int /*<<< orphan*/  IpAddress; } ;
typedef  TYPE_1__ IP_CLIENT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  ip_clients ; 

IP_CLIENT *FUNC3(IP *ip)
{
	IP_CLIENT t;
	// Validate arguments
	if (ip == NULL)
	{
		return NULL;
	}

	FUNC2(&t, sizeof(t));
	FUNC0(&t.IpAddress, ip, sizeof(IP));

	return FUNC1(ip_clients, &t);
}