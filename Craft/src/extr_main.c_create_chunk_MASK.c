#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ *** light_maps; int /*<<< orphan*/ *** block_maps; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ WorkerItem ;
struct TYPE_7__ {int /*<<< orphan*/  lights; int /*<<< orphan*/  map; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(Chunk *chunk, int p, int q) {
    FUNC0(chunk, p, q);

    WorkerItem _item;
    WorkerItem *item = &_item;
    item->p = chunk->p;
    item->q = chunk->q;
    item->block_maps[1][1] = &chunk->map;
    item->light_maps[1][1] = &chunk->lights;
    FUNC1(item);

    FUNC2(p, q);
}