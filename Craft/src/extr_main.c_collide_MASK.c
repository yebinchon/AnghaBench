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
 int FUNC0 (float) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC4 (float) ; 

int FUNC5(int height, float *x, float *y, float *z) {
    int result = 0;
    int p = FUNC0(*x);
    int q = FUNC0(*z);
    Chunk *chunk = FUNC1(p, q);
    if (!chunk) {
        return result;
    }
    Map *map = &chunk->map;
    int nx = FUNC4(*x);
    int ny = FUNC4(*y);
    int nz = FUNC4(*z);
    float px = *x - nx;
    float py = *y - ny;
    float pz = *z - nz;
    float pad = 0.25;
    for (int dy = 0; dy < height; dy++) {
        if (px < -pad && FUNC2(FUNC3(map, nx - 1, ny - dy, nz))) {
            *x = nx - pad;
        }
        if (px > pad && FUNC2(FUNC3(map, nx + 1, ny - dy, nz))) {
            *x = nx + pad;
        }
        if (py < -pad && FUNC2(FUNC3(map, nx, ny - dy - 1, nz))) {
            *y = ny - pad;
            result = 1;
        }
        if (py > pad && FUNC2(FUNC3(map, nx, ny - dy + 1, nz))) {
            *y = ny + pad;
            result = 1;
        }
        if (pz < -pad && FUNC2(FUNC3(map, nx, ny - dy, nz - 1))) {
            *z = nz - pad;
        }
        if (pz > pad && FUNC2(FUNC3(map, nx, ny - dy, nz + 1))) {
            *z = nz + pad;
        }
    }
    return result;
}