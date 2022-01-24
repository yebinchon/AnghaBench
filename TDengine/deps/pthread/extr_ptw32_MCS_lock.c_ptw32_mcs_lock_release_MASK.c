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
struct TYPE_3__ {int /*<<< orphan*/  readyFlag; int /*<<< orphan*/  next; int /*<<< orphan*/  nextFlag; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ ptw32_mcs_local_node_t ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_SIZEPTR ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_SIZE ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_PVOID_PTR ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_PVOID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void 
FUNC4 (ptw32_mcs_local_node_t * node)
{
  ptw32_mcs_lock_t *lock = node->lock;
  ptw32_mcs_local_node_t *next =
    (ptw32_mcs_local_node_t *)
      FUNC1((PTW32_INTERLOCKED_SIZEPTR)&node->next, (PTW32_INTERLOCKED_SIZE)0); /* MBR fence */

  if (0 == next)
    {
      /* no known successor */

      if (node == (ptw32_mcs_local_node_t *)
	  FUNC0((PTW32_INTERLOCKED_PVOID_PTR)lock,
						 (PTW32_INTERLOCKED_PVOID)0,
						 (PTW32_INTERLOCKED_PVOID)node))
	{
	  /* no successor, lock is free now */
	  return;
	}
  
      /* A successor has started enqueueing behind us so wait for them to link to us */
      FUNC3(&node->nextFlag);
      next = (ptw32_mcs_local_node_t *)
	FUNC1((PTW32_INTERLOCKED_SIZEPTR)&node->next, (PTW32_INTERLOCKED_SIZE)0); /* MBR fence */
    }

  /* pass the lock */
  FUNC2(&next->readyFlag);
}