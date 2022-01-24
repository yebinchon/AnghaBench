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

/* Variables and functions */
 float FUNC0 (int,int) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 

void FUNC3(int flying, int sz, int sx, float rx, float ry,
    float *vx, float *vy, float *vz) {
    *vx = 0; *vy = 0; *vz = 0;
    if (!sz && !sx) {
        return;
    }
    float strafe = FUNC0(sz, sx);
    if (flying) {
        float m = FUNC1(ry);
        float y = FUNC2(ry);
        if (sx) {
            if (!sz) {
                y = 0;
            }
            m = 1;
        }
        if (sz > 0) {
            y = -y;
        }
        *vx = FUNC1(rx + strafe) * m;
        *vy = y;
        *vz = FUNC2(rx + strafe) * m;
    }
    else {
        *vx = FUNC1(rx + strafe);
        *vy = 0;
        *vz = FUNC2(rx + strafe);
    }
}