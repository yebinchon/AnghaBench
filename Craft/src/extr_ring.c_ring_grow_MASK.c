#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int capacity; int /*<<< orphan*/  data; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  RingEntry ;
typedef  TYPE_1__ Ring ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC4(Ring *ring) {
    Ring new_ring;
    RingEntry entry;
    FUNC1(&new_ring, ring->capacity * 2);
    while (FUNC2(ring, &entry)) {
        FUNC3(&new_ring, &entry);
    }
    FUNC0(ring->data);
    ring->capacity = new_ring.capacity;
    ring->start = new_ring.start;
    ring->end = new_ring.end;
    ring->data = new_ring.data;
}