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
struct TYPE_4__ {int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  Map ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 

void FUNC7(int p, int q, int x, int y, int z, int w, int dirty) {
    Chunk *chunk = FUNC3(p, q);
    if (chunk) {
        Map *map = &chunk->map;
        if (FUNC4(map, x, y, z, w)) {
            if (dirty) {
                FUNC2(chunk);
            }
            FUNC1(p, q, x, y, z, w);
        }
    }
    else {
        FUNC1(p, q, x, y, z, w);
    }
    if (w == 0 && FUNC0(x) == p && FUNC0(z) == q) {
        FUNC6(x, y, z);
        FUNC5(p, q, x, y, z, 0);
    }
}