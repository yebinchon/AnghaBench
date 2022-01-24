#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  aio_workq_entry ;
struct TYPE_5__ {int /*<<< orphan*/  aio_done_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_aio_total_count; int /*<<< orphan*/  p_aio_doneq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ aio_anchor ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  aio_proc_link ; 

__attribute__((used)) static void
FUNC3(proc_t procp, aio_workq_entry *entryp)
{
	FUNC1(&procp->p_aio_doneq, entryp, aio_proc_link);
	FUNC0(&aio_anchor.aio_done_count);
	FUNC2();
	procp->p_aio_total_count--;
}