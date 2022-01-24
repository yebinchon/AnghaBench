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
struct TYPE_4__ {int /*<<< orphan*/  Recv; int /*<<< orphan*/  Send; } ;
typedef  TYPE_1__ TRAFFIC ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(FOLDER *parent, char *name, TRAFFIC *t)
{
	FOLDER *f;
	// Validate arguments
	if (t != NULL)
	{
		FUNC2(t, sizeof(TRAFFIC));
	}
	if (parent == NULL || name == NULL || t == NULL)
	{
		return;
	}

	f = FUNC0(parent, name);

	if (f == NULL)
	{
		return;
	}

	FUNC1(f, "SendTraffic", &t->Send);
	FUNC1(f, "RecvTraffic", &t->Recv);
}