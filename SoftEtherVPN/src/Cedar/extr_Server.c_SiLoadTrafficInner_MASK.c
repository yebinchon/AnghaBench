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
struct TYPE_4__ {void* UnicastBytes; void* UnicastCount; void* BroadcastBytes; void* BroadcastCount; } ;
typedef  TYPE_1__ TRAFFIC_ENTRY ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(FOLDER *parent, char *name, TRAFFIC_ENTRY *e)
{
	FOLDER *f;
	// Validate arguments
	if (e != NULL)
	{
		FUNC2(e, sizeof(TRAFFIC_ENTRY));
	}
	if (parent == NULL || name == NULL || e == NULL)
	{
		return;
	}

	f = FUNC0(parent, name);
	if (f == NULL)
	{
		return;
	}

	e->BroadcastCount = FUNC1(f, "BroadcastCount");
	e->BroadcastBytes = FUNC1(f, "BroadcastBytes");
	e->UnicastCount = FUNC1(f, "UnicastCount");
	e->UnicastBytes = FUNC1(f, "UnicastBytes");
}