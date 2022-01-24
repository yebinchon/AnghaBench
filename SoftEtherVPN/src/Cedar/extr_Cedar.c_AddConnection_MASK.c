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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  ConnectionList; int /*<<< orphan*/  ConnectionIncrement; } ;
struct TYPE_6__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ CONNECTION ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(CEDAR *cedar, CONNECTION *c)
{
	char tmp[MAX_SIZE];
	UINT i;
	// Validate arguments
	if (cedar == NULL || c == NULL)
	{
		return;
	}

	// Determine the name of the connection
	i = FUNC6(cedar->ConnectionIncrement);
	FUNC4(tmp, sizeof(tmp), "CID-%u", i);


	FUNC7(c->lock);
	{
		FUNC5(c->Name);
		c->Name = FUNC2(tmp);
	}
	FUNC9(c->lock);

	FUNC8(cedar->ConnectionList);
	{
		FUNC0(cedar->ConnectionList, c);
		FUNC1(c->ref);
		FUNC3("Connection %s Inserted to Cedar.\n", c->Name);
	}
	FUNC10(cedar->ConnectionList);
}