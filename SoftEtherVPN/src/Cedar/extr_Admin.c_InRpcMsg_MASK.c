#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Msg; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_MSG ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 char* FUNC6 (scalar_t__) ; 

void FUNC7(RPC_MSG *t, PACK *p)
{
	UINT size;
	char *utf8;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(t, sizeof(RPC_MSG));

	FUNC4(p, "HubName", t->HubName, sizeof(t->HubName));
	size = FUNC3(p, "Msg");
	utf8 = FUNC6(size + 8);
	FUNC2(p, "Msg", utf8);
	t->Msg = FUNC0(utf8);
	FUNC1(utf8);
}