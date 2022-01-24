#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
struct TYPE_8__ {void* prev; void* next; } ;
struct vm_speculative_age_q {TYPE_3__ age_q; } ;
struct TYPE_6__ {void* next; void* prev; } ;
struct TYPE_7__ {TYPE_1__ vmp_pageq; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_3__*) ; 
 size_t VM_PAGE_SPECULATIVE_AGED_Q ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct vm_speculative_age_q* vm_page_queue_speculative ; 

void
FUNC4(struct vm_speculative_age_q *aq)
{
        struct vm_speculative_age_q	*sq;
	vm_page_t	t;

	sq = &vm_page_queue_speculative[VM_PAGE_SPECULATIVE_AGED_Q];

	if (FUNC2(&sq->age_q)) {
	        sq->age_q.next = aq->age_q.next;
		sq->age_q.prev = aq->age_q.prev;
		
		t = (vm_page_t)FUNC1(sq->age_q.next);
		t->vmp_pageq.prev = FUNC0(&sq->age_q);

		t = (vm_page_t)FUNC1(sq->age_q.prev);
		t->vmp_pageq.next = FUNC0(&sq->age_q);
	} else {
	        t = (vm_page_t)FUNC1(sq->age_q.prev);
		t->vmp_pageq.next = aq->age_q.next;
						
		t = (vm_page_t)FUNC1(aq->age_q.next);
		t->vmp_pageq.prev = sq->age_q.prev;

		t = (vm_page_t)FUNC1(aq->age_q.prev);
		t->vmp_pageq.next = FUNC0(&sq->age_q);

		sq->age_q.prev = aq->age_q.prev;
	}
	FUNC3(&aq->age_q);
}