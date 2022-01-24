#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* keys; struct TYPE_10__* order; int /*<<< orphan*/ * heap; } ;
struct TYPE_9__ {int /*<<< orphan*/  userData; int /*<<< orphan*/  (* memfree ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  TYPE_1__ TESSalloc ;
typedef  TYPE_2__ PriorityQ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC5( TESSalloc* alloc, PriorityQ *pq )
{
	FUNC0(pq != NULL); 
	if (pq->heap != NULL) FUNC1( alloc, pq->heap );
	if (pq->order != NULL) alloc->memfree( alloc->userData, pq->order );
	if (pq->keys != NULL) alloc->memfree( alloc->userData, pq->keys );
	alloc->memfree( alloc->userData, pq );
}