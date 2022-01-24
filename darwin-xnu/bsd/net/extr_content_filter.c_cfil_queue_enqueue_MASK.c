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
struct cfil_queue {size_t q_end; int /*<<< orphan*/  q_mq; } ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfil_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct cfil_queue *cfq, mbuf_t m, size_t len)
{
	FUNC0(cfq);

	FUNC1(&cfq->q_mq, m);
	cfq->q_end += len;

	FUNC0(cfq);
}