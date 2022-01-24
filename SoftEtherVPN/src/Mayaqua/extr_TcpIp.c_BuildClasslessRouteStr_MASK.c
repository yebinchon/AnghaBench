#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int Exists; int /*<<< orphan*/  Gateway; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  Network; } ;
typedef  TYPE_1__ DHCP_CLASSLESS_ROUTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(char *str, UINT str_size, DHCP_CLASSLESS_ROUTE *r)
{
	FUNC0(str, str_size);
	// Validate arguments
	if (str == NULL || r == NULL || r->Exists == false)
	{
		return;
	}

	FUNC1(str, str_size, "%r/%r/%r", &r->Network, &r->SubnetMask, &r->Gateway);
}