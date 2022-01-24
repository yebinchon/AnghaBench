#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int /*<<< orphan*/  ServerListenerList; } ;
struct TYPE_10__ {TYPE_5__* Server; } ;
struct TYPE_9__ {int /*<<< orphan*/  Port; scalar_t__ Enable; } ;
typedef  TYPE_1__ RPC_LISTENER ;
typedef  TYPE_2__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LISTENER_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

UINT FUNC7(ADMIN *a, RPC_LISTENER *t)
{
	UINT ret = ERR_NO_ERROR;

	SERVER_ADMIN_ONLY;


	FUNC2(a->Server->ServerListenerList);
	{
		if (t->Enable)
		{
			if (FUNC4(a->Server, t->Port) == false)
			{
				ret = ERR_LISTENER_NOT_FOUND;
			}
			else
			{
				FUNC0(a, NULL, "LA_ENABLE_LISTENER", t->Port);
			}
		}
		else
		{
			if (FUNC3(a->Server, t->Port) == false)
			{
				ret = ERR_LISTENER_NOT_FOUND;
			}
			else
			{
				FUNC0(a, NULL, "LA_DISABLE_LISTENER", t->Port);
			}
		}
	}
	FUNC6(a->Server->ServerListenerList);

	FUNC1(a->Server);

	FUNC5(250);

	return ret;
}