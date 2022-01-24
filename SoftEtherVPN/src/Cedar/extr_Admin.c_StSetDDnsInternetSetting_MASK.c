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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {TYPE_1__* Server; } ;
struct TYPE_5__ {int /*<<< orphan*/ * DDnsClient; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  INTERNET_SETTING ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_2__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 

UINT FUNC2(ADMIN *a, INTERNET_SETTING *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;

	SERVER_ADMIN_ONLY;
	NO_SUPPORT_FOR_BRIDGE;

	if (s->DDnsClient == NULL)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC0(s->DDnsClient, t);

	FUNC1(s);

	return ret;
}