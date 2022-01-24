#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_usec; int tv_sec; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_7__ {void** msa_stack; void** msa_pstack; int msa_ptstamp; int msa_tstamp; scalar_t__ msa_depth; scalar_t__ msa_pdepth; int /*<<< orphan*/  msa_thread; int /*<<< orphan*/  msa_pthread; } ;
typedef  TYPE_1__ mcl_scratch_audit_t ;
struct TYPE_8__ {int /*<<< orphan*/ * mca_contents; } ;
typedef  TYPE_2__ mcache_audit_t ;
struct TYPE_9__ {int tv_usec; int tv_sec; } ;

/* Variables and functions */
 int MCACHE_STACK_DEPTH ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_4__ mb_start ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 

__attribute__((used)) static void
FUNC7(mcache_audit_t *mca)
{
	void *stack[MCACHE_STACK_DEPTH + 1];
	mcl_scratch_audit_t *msa;
	struct timeval now;

	FUNC2(mca->mca_contents != NULL);
	msa = FUNC0(mca);

	msa->msa_pthread = msa->msa_thread;
	msa->msa_thread = FUNC5();
	FUNC3(msa->msa_stack, msa->msa_pstack, sizeof (msa->msa_pstack));
	msa->msa_pdepth = msa->msa_depth;
	FUNC4(stack, sizeof (stack));
	msa->msa_depth = FUNC1(stack, MCACHE_STACK_DEPTH + 1) - 1;
	FUNC3(&stack[1], msa->msa_stack, sizeof (msa->msa_stack));

	msa->msa_ptstamp = msa->msa_tstamp;
	FUNC6(&now);
	/* tstamp is in ms relative to base_ts */
	msa->msa_tstamp = ((now.tv_usec - mb_start.tv_usec) / 1000);
	if ((now.tv_sec - mb_start.tv_sec) > 0)
		msa->msa_tstamp += ((now.tv_sec - mb_start.tv_sec) * 1000);
}