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
struct TYPE_4__ {int unblocked; int /*<<< orphan*/  thread; int /*<<< orphan*/  cancel; } ;
typedef  TYPE_1__ SOCKET_TIMEOUT_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(SOCKET_TIMEOUT_PARAM *ttp)
{
	if(ttp == NULL)
	{
		return;
	}

	ttp->unblocked = true;
	FUNC0(ttp->cancel);
	FUNC4(ttp->thread, INFINITE);
	FUNC2(ttp->cancel);
	FUNC3(ttp->thread);
	FUNC1(ttp);
//	Debug("FreeSocketTimeout succeed\n");
	return;
}