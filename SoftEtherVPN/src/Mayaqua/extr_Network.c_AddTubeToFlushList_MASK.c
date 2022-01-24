#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int IsInFlushList; int /*<<< orphan*/  Ref; } ;
struct TYPE_7__ {int /*<<< orphan*/  List; } ;
typedef  TYPE_1__ TUBE_FLUSH_LIST ;
typedef  TYPE_2__ TUBE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC3(TUBE_FLUSH_LIST *f, TUBE *t)
{
	// Validate arguments
	if (f == NULL || t == NULL)
	{
		return;
	}

	if (t->IsInFlushList)
	{
		return;
	}

	if (FUNC2(f->List, t) == false)
	{
		FUNC0(f->List, t);

		FUNC1(t->Ref);

		t->IsInFlushList = true;
	}
}