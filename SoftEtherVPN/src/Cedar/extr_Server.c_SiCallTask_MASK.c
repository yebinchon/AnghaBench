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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_6__ {TYPE_1__* Cedar; int /*<<< orphan*/  hostname; } ;
struct TYPE_5__ {int /*<<< orphan*/  Server; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

PACK *FUNC5(FARM_MEMBER *f, PACK *p, char *taskname)
{
	PACK *ret;
	char tmp[MAX_PATH];
	// Validate arguments
	if (f == NULL || p == NULL || taskname == NULL)
	{
		return NULL;
	}

	FUNC2(p, "taskname", taskname);

	FUNC0("Call Task [%s] (%s)\n", taskname, f->hostname);

	FUNC1(tmp, sizeof(tmp), "CLUSTER_CALL: Entering Call [%s] to %s", taskname, f->hostname);
	FUNC3(f->Cedar->Server, tmp);

	ret = FUNC4(f, p);

	FUNC1(tmp, sizeof(tmp), "CLUSTER_CALL: Leaving Call [%s] to %s", taskname, f->hostname);
	FUNC3(f->Cedar->Server, tmp);

	return ret;
}