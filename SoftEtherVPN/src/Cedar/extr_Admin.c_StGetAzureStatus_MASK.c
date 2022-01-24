#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {TYPE_1__* Server; } ;
struct TYPE_11__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  IsEnabled; int /*<<< orphan*/  IsConnected; } ;
struct TYPE_10__ {int /*<<< orphan*/  IsEnabled; int /*<<< orphan*/  IsConnected; } ;
struct TYPE_9__ {TYPE_3__* AzureClient; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_AZURE_STATUS ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_3__ AZURE_CLIENT ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

UINT FUNC4(ADMIN *a, RPC_AZURE_STATUS *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	AZURE_CLIENT *ac;

	SERVER_ADMIN_ONLY;
	NO_SUPPORT_FOR_BRIDGE;

	if (FUNC1(s) == false)
	{
		return ERR_NOT_SUPPORTED;
	}

	ac = s->AzureClient;
	if (ac == NULL)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC3(t, sizeof(RPC_AZURE_STATUS));

	FUNC0(ac->Lock);
	{
		t->IsConnected = ac->IsConnected;
		t->IsEnabled = ac->IsEnabled;
	}
	FUNC2(ac->Lock);

	return ERR_NO_ERROR;
}