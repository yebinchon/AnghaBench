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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Msg; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_MSG ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(PACK *p, RPC_MSG *t)
{
	UINT size;
	char *utf8;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "HubName", t->HubName);
	utf8 = FUNC0(t->Msg);
	size = FUNC4(utf8);
	FUNC2(p, "Msg", utf8, size);
	FUNC1(utf8);
}