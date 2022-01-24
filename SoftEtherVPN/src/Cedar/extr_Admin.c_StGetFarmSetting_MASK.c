#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {scalar_t__ ServerType; int NumPort; void* Ports; int /*<<< orphan*/  ControllerPort; int /*<<< orphan*/  ControllerName; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/  Weight; int /*<<< orphan*/  ControllerOnly; } ;
struct TYPE_8__ {scalar_t__ ServerType; int NumPublicPort; int /*<<< orphan*/  ControllerPort; int /*<<< orphan*/  ControllerName; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/  PublicPorts; int /*<<< orphan*/  Weight; int /*<<< orphan*/  ControllerOnly; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_FARM ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 void* FUNC4 (int) ; 

UINT FUNC5(ADMIN *a, RPC_FARM *t)
{
	SERVER *s;
	FUNC1(t);
	FUNC3(t, sizeof(RPC_FARM));

	s = a->Server;
	t->ServerType = s->ServerType;
	t->ControllerOnly = s->ControllerOnly;
	t->Weight = s->Weight;

	if (t->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		t->NumPort = s->NumPublicPort;
		t->Ports = FUNC4(sizeof(UINT) * t->NumPort);
		FUNC0(t->Ports, s->PublicPorts, sizeof(UINT) * t->NumPort);
		t->PublicIp = s->PublicIp;
		FUNC2(t->ControllerName, sizeof(t->ControllerName), s->ControllerName);
		t->ControllerPort = s->ControllerPort;
	}
	else
	{
		t->NumPort = 0;
		t->Ports = FUNC4(0);
	}

	return ERR_NO_ERROR;
}