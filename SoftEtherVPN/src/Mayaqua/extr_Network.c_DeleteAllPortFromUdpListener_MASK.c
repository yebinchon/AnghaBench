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
typedef  int UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  PortList; } ;
typedef  TYPE_1__ UDPLISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* FUNC7 (int) ; 

void FUNC8(UDPLISTENER *u)
{
	// Validate arguments
	if (u == NULL)
	{
		return;
	}

	FUNC4(u->PortList);
	{
		UINT num_ports = FUNC3(u->PortList);
		UINT *ports = FUNC7(sizeof(UINT) * num_ports);
		UINT i;

		for (i = 0;i < num_ports;i++)
		{
			ports[i] = *((UINT *)(FUNC2(u->PortList, i)));
		}

		for (i = 0;i < num_ports;i++)
		{
			UINT port = ports[i];

			FUNC0(u->PortList, port);
		}

		FUNC1(ports);
	}
	FUNC6(u->PortList);

	FUNC5(u->Event);
}