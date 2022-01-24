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
struct TYPE_3__ {int /*<<< orphan*/  Err; int /*<<< orphan*/  FirstSock; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  ServerBuild; int /*<<< orphan*/  ServerVer; int /*<<< orphan*/  Random; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

bool FUNC4(CONNECTION *c)
{
	PACK *p;
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	// Random number generation
	FUNC3(c->Random, SHA1_SIZE);

	p = FUNC2(c->Random, c->ServerVer, c->ServerBuild, c->ServerStr);
	if (FUNC1(c->FirstSock, p) == false)
	{
		FUNC0(p);
		c->Err = ERR_DISCONNECTED;
		return false;
	}

	FUNC0(p);

	return true;
}