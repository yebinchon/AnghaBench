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
struct TYPE_3__ {int /*<<< orphan*/  UnicastBytes; int /*<<< orphan*/  UnicastCount; int /*<<< orphan*/  BroadcastBytes; int /*<<< orphan*/  BroadcastCount; } ;
typedef  TYPE_1__ TRAFFIC_ENTRY ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 

void FUNC2(FOLDER *parent, char *name, TRAFFIC_ENTRY *e)
{
	FOLDER *f;
	// Validate arguments
	if (parent == NULL || name == NULL || e == NULL)
	{
		return;
	}

	f = FUNC1(parent, name);
	FUNC0(f, "BroadcastCount", e->BroadcastCount);
	FUNC0(f, "BroadcastBytes", e->BroadcastBytes);
	FUNC0(f, "UnicastCount", e->UnicastCount);
	FUNC0(f, "UnicastBytes", e->UnicastBytes);
}