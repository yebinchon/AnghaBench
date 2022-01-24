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
struct TYPE_3__ {int /*<<< orphan*/  Listener; int /*<<< orphan*/  AdminThreadList; int /*<<< orphan*/  AdminSockList; int /*<<< orphan*/  Cedar; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  INFINITE ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(EL *e)
{
	UINT i;
	THREAD **threads;
	SOCK **socks;
	UINT num_threads, num_socks;
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	FUNC9(e->Cedar);

	FUNC4(e->AdminThreadList);
	{
		threads = FUNC10(e->AdminThreadList);
		num_threads = FUNC3(e->AdminThreadList);
		FUNC0(e->AdminThreadList);

		socks = FUNC10(e->AdminSockList);
		num_socks = FUNC3(e->AdminSockList);
		FUNC0(e->AdminSockList);
	}
	FUNC11(e->AdminThreadList);

	for (i = 0;i < num_socks;i++)
	{
		FUNC1(socks[i]);
		FUNC7(socks[i]);
	}

	for (i = 0;i < num_threads;i++)
	{
		FUNC12(threads[i], INFINITE);
		FUNC8(threads[i]);
	}

	FUNC2(threads);
	FUNC2(socks);

	FUNC5(e->AdminSockList);
	FUNC5(e->AdminThreadList);

	FUNC6(e->Listener);
}