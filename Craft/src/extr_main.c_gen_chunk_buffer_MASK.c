#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ *** light_maps; int /*<<< orphan*/ *** block_maps; scalar_t__ q; scalar_t__ p; } ;
typedef  TYPE_1__ WorkerItem ;
struct TYPE_9__ {scalar_t__ dirty; int /*<<< orphan*/  lights; int /*<<< orphan*/  map; scalar_t__ q; scalar_t__ p; } ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 

void FUNC3(Chunk *chunk) {
    WorkerItem _item;
    WorkerItem *item = &_item;
    item->p = chunk->p;
    item->q = chunk->q;
    for (int dp = -1; dp <= 1; dp++) {
        for (int dq = -1; dq <= 1; dq++) {
            Chunk *other = chunk;
            if (dp || dq) {
                other = FUNC1(chunk->p + dp, chunk->q + dq);
            }
            if (other) {
                item->block_maps[dp + 1][dq + 1] = &other->map;
                item->light_maps[dp + 1][dq + 1] = &other->lights;
            }
            else {
                item->block_maps[dp + 1][dq + 1] = 0;
                item->light_maps[dp + 1][dq + 1] = 0;
            }
        }
    }
    FUNC0(item);
    FUNC2(chunk, item);
    chunk->dirty = 0;
}