#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct eventqelt* tqh_first; } ;
struct pipe {TYPE_2__ pipe_evlist; } ;
struct TYPE_3__ {struct eventqelt* tqe_next; } ;
struct eventqelt {int /*<<< orphan*/  ee_proc; TYPE_1__ ee_slist; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct eventqelt*) ; 
 int /*<<< orphan*/  FUNC1 (struct eventqelt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct eventqelt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ee_slist ; 

void
FUNC3(struct pipe *cpipe)
{
        struct eventqelt *evq, *next;
	proc_t 	p;

	for (evq = cpipe->pipe_evlist.tqh_first; evq != NULL; evq = next) {
	        next = evq->ee_slist.tqe_next;
		p = evq->ee_proc;

		FUNC0(p, evq);

		FUNC2(&cpipe->pipe_evlist, evq, ee_slist); // remove from pipe q
		FUNC1(evq, M_TEMP);
	}
}