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
typedef  int /*<<< orphan*/  name ;
struct TYPE_3__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(SERVER *s, PACK *p)
{
	char name[MAX_SIZE];
	HUB *h;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	if (FUNC3(p, "HubName", name, sizeof(name)) == false)
	{
		return;
	}

	FUNC2(s->Cedar);

	h = FUNC1(s->Cedar, name);
	if (h == NULL)
	{
		FUNC6(s->Cedar);
		return;
	}
	FUNC6(s->Cedar);

	FUNC5(h);

	FUNC2(s->Cedar);

	FUNC0(s->Cedar, h, true);

	FUNC6(s->Cedar);

	FUNC4(h);
}