#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC1 (float) ; 

int FUNC2(
    Map *map, float max_distance, int previous,
    float x, float y, float z,
    float vx, float vy, float vz,
    int *hx, int *hy, int *hz)
{
    int m = 32;
    int px = 0;
    int py = 0;
    int pz = 0;
    for (int i = 0; i < max_distance * m; i++) {
        int nx = FUNC1(x);
        int ny = FUNC1(y);
        int nz = FUNC1(z);
        if (nx != px || ny != py || nz != pz) {
            int hw = FUNC0(map, nx, ny, nz);
            if (hw > 0) {
                if (previous) {
                    *hx = px; *hy = py; *hz = pz;
                }
                else {
                    *hx = nx; *hy = ny; *hz = nz;
                }
                return hw;
            }
            px = nx; py = ny; pz = nz;
        }
        x += vx / m; y += vy / m; z += vz / m;
    }
    return 0;
}