#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Thread; void* FlushEvent; void* Event; int /*<<< orphan*/  RecordQueue; int /*<<< orphan*/  SwitchType; void* Prefix; void* DirName; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ LOG ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  LogThread ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int) ; 

LOG *FUNC7(char *dir, char *prefix, UINT switch_type)
{
	LOG *g;

	g = FUNC6(sizeof(LOG));
	g->lock = FUNC2();
	g->DirName = FUNC0(dir == NULL ? "" : dir);
	g->Prefix = FUNC0(prefix == NULL ? "log" : prefix);
	g->SwitchType = switch_type;
	g->RecordQueue = FUNC3();
	g->Event = FUNC1();
	g->FlushEvent = FUNC1();

	g->Thread = FUNC4(LogThread, g);

	FUNC5(g->Thread);

	return g;
}