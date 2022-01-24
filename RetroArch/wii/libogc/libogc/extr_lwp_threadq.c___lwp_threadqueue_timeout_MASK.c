#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ sync_state; int /*<<< orphan*/  timeout_state; } ;
typedef  TYPE_2__ lwp_thrqueue ;
struct TYPE_7__ {TYPE_2__* queue; int /*<<< orphan*/  ret_code; } ;
struct TYPE_9__ {TYPE_1__ wait; } ;
typedef  TYPE_3__ lwp_cntrl ;

/* Variables and functions */
 scalar_t__ LWP_THREADQ_SATISFIED ; 
 scalar_t__ LWP_THREADQ_SYNCHRONIZED ; 
 scalar_t__ LWP_THREADQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(void *usr_data)
{
	lwp_cntrl *thethread;
	lwp_thrqueue *thequeue;

	FUNC0();
	thethread = (lwp_cntrl*)usr_data;
	thequeue = thethread->wait.queue;
	if(thequeue->sync_state!=LWP_THREADQ_SYNCHRONIZED && FUNC2(thethread)) {
		if(thequeue->sync_state!=LWP_THREADQ_SATISFIED) thequeue->sync_state = LWP_THREADQ_TIMEOUT;
	} else {
		thethread->wait.ret_code = thethread->wait.queue->timeout_state;
		FUNC3(thethread->wait.queue,thethread);
	}
	FUNC1();
}