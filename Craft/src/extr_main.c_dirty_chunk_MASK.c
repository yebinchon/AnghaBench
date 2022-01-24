#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dirty; scalar_t__ q; scalar_t__ p; } ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

void FUNC2(Chunk *chunk) {
    chunk->dirty = 1;
    if (FUNC1(chunk)) {
        for (int dp = -1; dp <= 1; dp++) {
            for (int dq = -1; dq <= 1; dq++) {
                Chunk *other = FUNC0(chunk->p + dp, chunk->q + dq);
                if (other) {
                    other->dirty = 1;
                }
            }
        }
    }
}