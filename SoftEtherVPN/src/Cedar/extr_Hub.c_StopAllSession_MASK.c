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
struct TYPE_3__ {int /*<<< orphan*/  SessionList; } ;
typedef  int /*<<< orphan*/  SESSION ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(HUB *h)
{
	SESSION **s;
	UINT i, num;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	FUNC3(h->SessionList);
	{
		num = FUNC2(h->SessionList);
		s = FUNC6(h->SessionList);
		FUNC0(h->SessionList);
	}
	FUNC7(h->SessionList);

	for (i = 0;i < num;i++)
	{
		FUNC5(s[i]);
		FUNC4(s[i]);
	}

	FUNC1(s);
}