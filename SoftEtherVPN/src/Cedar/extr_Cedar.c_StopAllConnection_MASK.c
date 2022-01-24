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
typedef  size_t UINT ;
struct TYPE_3__ {int /*<<< orphan*/  ConnectionList; } ;
typedef  int /*<<< orphan*/  CONNECTION ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(CEDAR *c)
{
	UINT num;
	UINT i;
	CONNECTION **connections;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	FUNC3(c->ConnectionList);
	{
		connections = FUNC6(c->ConnectionList);
		num = FUNC2(c->ConnectionList);
		FUNC0(c->ConnectionList);
	}
	FUNC7(c->ConnectionList);

	for (i = 0;i < num;i++)
	{
		FUNC5(connections[i], false);
		FUNC4(connections[i]);
	}
	FUNC1(connections);
}