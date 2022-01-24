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
typedef  void* UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Thread; void* IntervalLastNg; void* IntervalLastOk; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Lock; int /*<<< orphan*/  HaltEvent; } ;
typedef  TYPE_1__ QUERYIPTHREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  QueryIpThreadMain ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC4 (int) ; 

QUERYIPTHREAD *FUNC5(char *hostname, UINT interval_last_ok, UINT interval_last_ng)
{
	QUERYIPTHREAD *t;

	t = FUNC4(sizeof(QUERYIPTHREAD));

	t->HaltEvent = FUNC0();
	t->Lock = FUNC1();
	FUNC3(t->Hostname, sizeof(t->Hostname), hostname);
	t->IntervalLastOk = interval_last_ok;
	t->IntervalLastNg = interval_last_ng;

	t->Thread = FUNC2(QueryIpThreadMain, t);

	return t;
}