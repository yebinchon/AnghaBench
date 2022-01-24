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
struct TYPE_3__ {int p; int q; int /*<<< orphan*/ *** light_maps; int /*<<< orphan*/ *** block_maps; } ;
typedef  TYPE_1__ WorkerItem ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  map_set_func ; 

void FUNC3(WorkerItem *item) {
    int p = item->p;
    int q = item->q;
    Map *block_map = item->block_maps[1][1];
    Map *light_map = item->light_maps[1][1];
    FUNC0(p, q, map_set_func, block_map);
    FUNC1(block_map, p, q);
    FUNC2(light_map, p, q);
}