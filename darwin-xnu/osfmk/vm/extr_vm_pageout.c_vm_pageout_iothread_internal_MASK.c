#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct cq {size_t id; } ;
struct TYPE_10__ {scalar_t__ pgo_inited; scalar_t__ pgo_lowpriority; int /*<<< orphan*/  pgo_tid; } ;
struct TYPE_9__ {scalar_t__ vm_restricted_to_single_processor; } ;
struct TYPE_8__ {int /*<<< orphan*/ * vmct_minpages; } ;
struct TYPE_7__ {int /*<<< orphan*/  thread_id; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  TH_OPT_VMPRIV ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cq*) ; 
 TYPE_4__ vm_pageout_queue_internal ; 
 TYPE_3__ vm_pageout_state ; 
 TYPE_2__ vmct_stats ; 

__attribute__((used)) static void
FUNC6(struct cq *cq)
{
	thread_t	self = FUNC0();

	self->options |= TH_OPT_VMPRIV;

	FUNC3();

	vm_pageout_queue_internal.pgo_tid = self->thread_id;
	vm_pageout_queue_internal.pgo_lowpriority = TRUE;
	vm_pageout_queue_internal.pgo_inited = TRUE;

	FUNC4();

	if (vm_pageout_state.vm_restricted_to_single_processor == TRUE)
		FUNC2();


	FUNC1(FUNC0(), "VM_compressor");
#if DEVELOPMENT || DEBUG
	vmct_stats.vmct_minpages[cq->id] = INT32_MAX;
#endif
	FUNC5(cq);

	/*NOTREACHED*/
}