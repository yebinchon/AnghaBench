#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_20__ {TYPE_14__* priority; } ;
struct TYPE_24__ {int sync_state; TYPE_1__ queues; } ;
typedef  TYPE_5__ lwp_thrqueue ;
struct TYPE_25__ {struct TYPE_25__* prev; struct TYPE_25__* next; } ;
typedef  TYPE_6__ lwp_node ;
struct TYPE_19__ {TYPE_6__* last; TYPE_6__* first; } ;
struct TYPE_23__ {TYPE_14__ block2n; } ;
struct TYPE_21__ {TYPE_6__* prev; TYPE_6__* next; } ;
struct TYPE_22__ {TYPE_2__ node; } ;
struct TYPE_26__ {int /*<<< orphan*/  timer; TYPE_4__ wait; TYPE_3__ object; } ;
typedef  TYPE_7__ lwp_cntrl ;

/* Variables and functions */
#define  LWP_THREADQ_NOTHINGHAPPEND 131 
 size_t LWP_THREADQ_NUM_PRIOHEADERS ; 
#define  LWP_THREADQ_SATISFIED 130 
#define  LWP_THREADQ_SYNCHRONIZED 129 
#define  LWP_THREADQ_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_6__* FUNC2 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*) ; 
 TYPE_6__* FUNC5 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_7__* _thr_executing ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_7__*,...) ; 

lwp_cntrl* FUNC11(lwp_thrqueue *queue)
{
	u32 level,idx;
	lwp_cntrl *newfirstthr,*ret = NULL;
	lwp_node *newfirstnode,*newsecnode,*last_node,*next_node,*prev_node;

	FUNC0(level);
	for(idx=0;idx<LWP_THREADQ_NUM_PRIOHEADERS;idx++) {
		if(!FUNC3(&queue->queues.priority[idx])) {
			ret	 = (lwp_cntrl*)queue->queues.priority[idx].first;
			goto dequeue;
		}
	}

#ifdef _LWPTHRQ_DEBUG
	printf("__lwp_threadqueue_dequeuepriority(%p,sync_state = %d)\n",ret,queue->sync_state);
#endif
	switch(queue->sync_state) {
		case LWP_THREADQ_SYNCHRONIZED:
		case LWP_THREADQ_SATISFIED:
			FUNC1(level);
			return NULL;
		case LWP_THREADQ_NOTHINGHAPPEND:
		case LWP_THREADQ_TIMEOUT:
			queue->sync_state = LWP_THREADQ_SATISFIED;
			FUNC1(level);
			return _thr_executing;
	}

dequeue:
#ifdef _LWPTHRQ_DEBUG
	printf("__lwp_threadqueue_dequeuepriority(%p,dequeue)\n",ret);
#endif
	newfirstnode = ret->wait.block2n.first;
	newfirstthr = (lwp_cntrl*)newfirstnode;
	next_node = ret->object.node.next;
	prev_node = ret->object.node.prev;
	if(!FUNC3(&ret->wait.block2n)) {
		last_node = ret->wait.block2n.last;
		newsecnode = newfirstnode->next;
		prev_node->next = newfirstnode;
		next_node->prev = newfirstnode;
		newfirstnode->next = next_node;
		newfirstnode->prev = prev_node;

		if(!FUNC4(&ret->wait.block2n)) {
			newsecnode->prev = FUNC2(&newfirstthr->wait.block2n);
			newfirstthr->wait.block2n.first = newsecnode;
			newfirstthr->wait.block2n.last = last_node;
			last_node->next = FUNC5(&newfirstthr->wait.block2n);
		}
	} else {
		prev_node->next = next_node;
		next_node->prev = prev_node;
	}

	if(!FUNC8(&ret->timer)) {
		FUNC1(level);
		FUNC6(ret);
	} else {
		FUNC7(&ret->timer);
		FUNC1(level);
		FUNC9(&ret->timer);
		FUNC6(ret);
	}
	return ret;
}