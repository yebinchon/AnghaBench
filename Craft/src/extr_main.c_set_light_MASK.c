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
struct TYPE_4__ {int /*<<< orphan*/  lights; } ;
typedef  int /*<<< orphan*/  Map ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 

void FUNC4(int p, int q, int x, int y, int z, int w) {
    Chunk *chunk = FUNC2(p, q);
    if (chunk) {
        Map *map = &chunk->lights;
        if (FUNC3(map, x, y, z, w)) {
            FUNC1(chunk);
            FUNC0(p, q, x, y, z, w);
        }
    }
    else {
        FUNC0(p, q, x, y, z, w);
    }
}