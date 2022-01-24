#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptw32_mcs_lock_t ;
struct TYPE_3__ {scalar_t__ readyFlag; scalar_t__ nextFlag; struct TYPE_3__* next; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ ptw32_mcs_local_node_t ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_PVOID_PTR ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_PVOID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

void 
FUNC3 (ptw32_mcs_lock_t * lock, ptw32_mcs_local_node_t * node)
{
  ptw32_mcs_local_node_t  *pred;
  
  node->lock = lock;
  node->nextFlag = 0;
  node->readyFlag = 0;
  node->next = 0; /* initially, no successor */
  
  /* queue for the lock */
  pred = (ptw32_mcs_local_node_t *)FUNC0((PTW32_INTERLOCKED_PVOID_PTR)lock,
								  (PTW32_INTERLOCKED_PVOID)node);

  if (0 != pred)
    {
      /* the lock was not free. link behind predecessor. */
      pred->next = node;
      FUNC1(&pred->nextFlag);
      FUNC2(&node->readyFlag);
    }
}