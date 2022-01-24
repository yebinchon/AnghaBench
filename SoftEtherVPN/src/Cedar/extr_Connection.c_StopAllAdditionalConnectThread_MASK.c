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
struct TYPE_3__ {int ServerMode; int /*<<< orphan*/  ConnectingThreads; int /*<<< orphan*/  ConnectingSocks; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  INFINITE ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(CONNECTION *c)
{
	UINT i, num;
	SOCK **socks;
	THREAD **threads;
	// Validate arguments
	if (c == NULL || c->ServerMode != false)
	{
		return;
	}

	// Disconnect the socket first
	FUNC5(c->ConnectingSocks);
	{
		num = FUNC4(c->ConnectingSocks);
		socks = FUNC8(c->ConnectingSocks);
		FUNC1(c->ConnectingSocks);
	}
	FUNC9(c->ConnectingSocks);
	for (i = 0;i < num;i++)
	{
		FUNC2(socks[i]);
		FUNC6(socks[i]);
	}
	FUNC3(socks);

	// Then, wait for the suspension of the thread
	FUNC5(c->ConnectingThreads);
	{
		num = FUNC4(c->ConnectingThreads);
		FUNC0("c->ConnectingThreads: %u\n", num);
		threads = FUNC8(c->ConnectingThreads);
		FUNC1(c->ConnectingThreads);
	}
	FUNC9(c->ConnectingThreads);
	for (i = 0;i < num;i++)
	{
		FUNC10(threads[i], INFINITE);
		FUNC7(threads[i]);
	}
	FUNC3(threads);
}