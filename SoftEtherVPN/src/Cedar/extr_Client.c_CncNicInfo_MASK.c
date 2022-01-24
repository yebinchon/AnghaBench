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
struct TYPE_3__ {char* NicName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ UI_NICINFO ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

SOCK *FUNC6(UI_NICINFO *info)
{
	SOCK *s;
	PACK *p;
	// Validate arguments
	if (info == NULL)
	{
		return NULL;
	}

	s = FUNC0(200);
	if (s == NULL)
	{
		return NULL;
	}

	p = FUNC2();
	FUNC3(p, "function", "nicinfo");
	FUNC3(p, "NicName", info->NicName);
	FUNC4(p, "AccountName", info->AccountName);

	FUNC5(s, p);
	FUNC1(p);

	return s;
}