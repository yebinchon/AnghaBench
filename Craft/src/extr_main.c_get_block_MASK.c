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
struct TYPE_3__ {int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  Map ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 

int FUNC3(int x, int y, int z) {
    int p = FUNC0(x);
    int q = FUNC0(z);
    Chunk *chunk = FUNC1(p, q);
    if (chunk) {
        Map *map = &chunk->map;
        return FUNC2(map, x, y, z);
    }
    return 0;
}