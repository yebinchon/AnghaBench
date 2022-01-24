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
struct TYPE_3__ {int /*<<< orphan*/  SockList; } ;
typedef  TYPE_1__ SOCKLIST ;
typedef  int /*<<< orphan*/  SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(SOCKLIST *sl)
{
	SOCK **ss;
	UINT num, i;
	// Validate arguments
	if (sl == NULL)
	{
		return;
	}

	FUNC4(sl->SockList);
	{
		num = FUNC3(sl->SockList);
		ss = FUNC6(sl->SockList);

		FUNC0(sl->SockList);
	}
	FUNC7(sl->SockList);

	for (i = 0;i < num;i++)
	{
		SOCK *s = ss[i];

		FUNC1(s);
		FUNC5(s);
	}

	FUNC2(ss);
}