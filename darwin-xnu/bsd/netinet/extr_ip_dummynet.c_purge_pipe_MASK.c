#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pipe {int /*<<< orphan*/  idle_heap; int /*<<< orphan*/  not_eligible_heap; int /*<<< orphan*/  scheduler_heap; struct mbuf* head; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct dn_pipe *pipe)
{
    struct mbuf *m, *mnext;

    FUNC2( &(pipe->fs), 1 );

    mnext = pipe->head;
    while ((m = mnext) != NULL) {
	mnext = m->m_nextpkt;
	FUNC0(m);
    }

    FUNC1( &(pipe->scheduler_heap) );
    FUNC1( &(pipe->not_eligible_heap) );
    FUNC1( &(pipe->idle_heap) );
}