#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int /*<<< orphan*/  ServerListenerList; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_9__ {TYPE_5__* Server; } ;
struct TYPE_8__ {int Port; int /*<<< orphan*/  Enable; } ;
typedef  TYPE_1__ RPC_LISTENER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_2__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_LISTENER_ALREADY_EXISTS ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

UINT FUNC6(ADMIN *a, RPC_LISTENER *t)
{
	UINT ret = ERR_NO_ERROR;
	CEDAR *c = a->Server->Cedar;

	if (t->Port == 0 || t->Port > 65535)
	{
		return ERR_INVALID_PARAMETER;
	}

	SERVER_ADMIN_ONLY;

	FUNC2(a->Server->ServerListenerList);
	{
		if (FUNC3(a->Server, t->Port, t->Enable) == false)
		{
			ret = ERR_LISTENER_ALREADY_EXISTS;
		}
		else
		{
			FUNC0(a, NULL, "LA_CREATE_LISTENER", t->Port);

			FUNC1(a->Server);
		}
	}
	FUNC5(a->Server->ServerListenerList);

	FUNC4(250);

	return ret;
}