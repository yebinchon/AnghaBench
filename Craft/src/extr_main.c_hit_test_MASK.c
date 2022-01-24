#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int chunk_count; TYPE_1__* chunks; } ;
struct TYPE_4__ {int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,float,float,float,float,float,float,int*,int*,int*) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (float) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC3 (float,float,float*,float*,float*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 float FUNC5 (scalar_t__) ; 

int FUNC6(
    int previous, float x, float y, float z, float rx, float ry,
    int *bx, int *by, int *bz)
{
    int result = 0;
    float best = 0;
    int p = FUNC2(x);
    int q = FUNC2(z);
    float vx, vy, vz;
    FUNC3(rx, ry, &vx, &vy, &vz);
    for (int i = 0; i < g->chunk_count; i++) {
        Chunk *chunk = g->chunks + i;
        if (FUNC1(chunk, p, q) > 1) {
            continue;
        }
        int hx, hy, hz;
        int hw = FUNC0(&chunk->map, 8, previous,
            x, y, z, vx, vy, vz, &hx, &hy, &hz);
        if (hw > 0) {
            float d = FUNC5(
                FUNC4(hx - x, 2) + FUNC4(hy - y, 2) + FUNC4(hz - z, 2));
            if (best == 0 || d < best) {
                best = d;
                *bx = hx; *by = hy; *bz = hz;
                result = hw;
            }
        }
    }
    return result;
}