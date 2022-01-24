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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int) ; 

void FUNC7(int x, int y, int z) {
    int p = FUNC0(x);
    int q = FUNC0(z);
    Chunk *chunk = FUNC4(p, q);
    if (chunk) {
        Map *map = &chunk->lights;
        int w = FUNC5(map, x, y, z) ? 0 : 15;
        FUNC6(map, x, y, z, w);
        FUNC2(p, q, x, y, z, w);
        FUNC1(x, y, z, w);
        FUNC3(chunk);
    }
}