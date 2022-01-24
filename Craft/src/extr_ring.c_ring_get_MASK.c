#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int start; int capacity; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  RingEntry ;
typedef  TYPE_1__ Ring ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

int FUNC2(Ring *ring, RingEntry *entry) {
    if (FUNC1(ring)) {
        return 0;
    }
    RingEntry *e = ring->data + ring->start;
    FUNC0(entry, e, sizeof(RingEntry));
    ring->start = (ring->start + 1) % ring->capacity;
    return 1;
}