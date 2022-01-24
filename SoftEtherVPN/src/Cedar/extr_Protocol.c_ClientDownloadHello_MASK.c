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
typedef  void* UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  Random; int /*<<< orphan*/ * FirstSock; void* Err; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  ServerBuild; int /*<<< orphan*/  ServerVer; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* ERR_SERVER_IS_NOT_VPN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 

bool FUNC5(CONNECTION *c, SOCK *s)
{
	PACK *p;
	UINT err;
	UCHAR random[SHA1_SIZE];
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	// Data reception
	p = FUNC4(s);
	if (p == NULL)
	{
		c->Err = ERR_SERVER_IS_NOT_VPN;
		return false;
	}

	if ((err = FUNC2(p)))
	{
		// An error has occured
		c->Err = err;
		FUNC1(p);
		return false;
	}

	// Packet interpretation
	if (FUNC3(p, random, &c->ServerVer, &c->ServerBuild, c->ServerStr, sizeof(c->ServerStr)) == false)
	{
		c->Err = ERR_SERVER_IS_NOT_VPN;
		FUNC1(p);
		return false;
	}

	if (c->FirstSock == s)
	{
		FUNC0(c->Random, random, SHA1_SIZE);
	}

	FUNC1(p);

	return true;
}