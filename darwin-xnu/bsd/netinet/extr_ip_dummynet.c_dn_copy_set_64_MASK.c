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
typedef  int /*<<< orphan*/  uint64_t ;
struct dn_flow_set {int rq_size; int rq_elements; struct dn_flow_queue** rq; } ;
struct dn_flow_queue_64 {void* fs; void* tail; void* head; void* next; } ;
struct dn_flow_queue {int hash_slot; struct dn_flow_set* fs; struct dn_flow_queue* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 void* USER_ADDR_NULL ; 
 scalar_t__ FUNC1 (struct dn_flow_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct dn_flow_queue*,struct dn_flow_queue_64*) ; 
 int /*<<< orphan*/  dn_mutex ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,...) ; 

__attribute__((used)) static
char* FUNC4(struct dn_flow_set *set, char *bp)
{
    int i, copied = 0 ;
    struct dn_flow_queue *q;
	struct dn_flow_queue_64 *qp = (struct dn_flow_queue_64 *)bp;

	FUNC0(dn_mutex, LCK_MTX_ASSERT_OWNED);

    for (i = 0 ; i <= set->rq_size ; i++)
		for (q = set->rq[i] ; q ; q = q->next, qp++ ) {
			if (q->hash_slot != i)
				FUNC3("dummynet: ++ at %d: wrong slot (have %d, "
					   "should be %d)\n", copied, q->hash_slot, i);
			if (q->fs != set)
				FUNC3("dummynet: ++ at %d: wrong fs ptr "
				    "(have 0x%llx, should be 0x%llx)\n", i,
				    (uint64_t)FUNC1(q->fs),
				    (uint64_t)FUNC1(set));
			copied++ ;
			//bcopy(q, qp, sizeof(*q));
			FUNC2( q, qp );
			/* cleanup pointers */
			qp->next = USER_ADDR_NULL ;
			qp->head = qp->tail = USER_ADDR_NULL ;
			qp->fs = USER_ADDR_NULL ;
		}
    if (copied != set->rq_elements)
		FUNC3("dummynet: ++ wrong count, have %d should be %d\n",
			   copied, set->rq_elements);
    return (char *)qp ;
}