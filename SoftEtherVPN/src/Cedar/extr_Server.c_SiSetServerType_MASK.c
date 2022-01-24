#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_5__ {int ControllerOnly; int /*<<< orphan*/  lock; int /*<<< orphan*/ * PublicPorts; scalar_t__ NumPublicPort; scalar_t__ PublicIp; int /*<<< orphan*/ * MemberPassword; scalar_t__ ControllerPort; int /*<<< orphan*/  ControllerName; scalar_t__ Weight; scalar_t__ UpdatedServerType; TYPE_1__* Cedar; } ;
struct TYPE_4__ {int Bridge; } ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 scalar_t__ FARM_DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_PUBLIC_PORT_NUM ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 

void FUNC8(SERVER *s, UINT type,
					 UINT ip, UINT num_port, UINT *ports,
					 char *controller_name, UINT controller_port, UCHAR *password, UINT weight, bool controller_only)
{
	bool bridge;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}
	if (type == SERVER_TYPE_FARM_MEMBER &&
		(num_port == 0 || ports == NULL || controller_name == NULL ||
		controller_port == 0 || password == NULL || num_port > MAX_PUBLIC_PORT_NUM))
	{
		return;
	}
	if (weight == 0)
	{
		weight = FARM_DEFAULT_WEIGHT;
	}

	bridge = s->Cedar->Bridge;

	FUNC3(s->lock);
	{
		// Update types
		s->UpdatedServerType = type;

		s->Weight = weight;

		// Set the value
		if (type == SERVER_TYPE_FARM_MEMBER)
		{
			FUNC5(s->ControllerName, sizeof(s->ControllerName), controller_name);
			s->ControllerPort = controller_port;
			if (FUNC2(password, SHA1_SIZE) == false)
			{
				FUNC0(s->MemberPassword, password, SHA1_SIZE);
			}
			s->PublicIp = ip;
			s->NumPublicPort = num_port;
			if (s->PublicPorts != NULL)
			{
				FUNC1(s->PublicPorts);
			}
			s->PublicPorts = FUNC7(num_port * sizeof(UINT));
			FUNC0(s->PublicPorts, ports, num_port * sizeof(UINT));
		}

		if (type == SERVER_TYPE_FARM_CONTROLLER)
		{
			s->ControllerOnly = controller_only;
		}
	}
	FUNC6(s->lock);

	// Restart the server
	FUNC4(bridge);
}