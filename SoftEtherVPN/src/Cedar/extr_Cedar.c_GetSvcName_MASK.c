#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  NetSvcList; } ;
struct TYPE_6__ {int Udp; char* Name; int /*<<< orphan*/  Port; } ;
typedef  TYPE_1__ NETSVC ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

char *FUNC3(CEDAR *cedar, bool udp, UINT port)
{
	char *ret = NULL;
	NETSVC t;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	t.Udp = (udp == 0 ? false : true);
	t.Port = port;

	FUNC0(cedar->NetSvcList);
	{
		NETSVC *n = FUNC1(cedar->NetSvcList, &t);
		if (n != NULL)
		{
			ret = n->Name;
		}
	}
	FUNC2(cedar->NetSvcList);

	return ret;
}