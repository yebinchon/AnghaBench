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
 float FUNC0 (int) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 

void FUNC3(float rx, float ry, float *vx, float *vy, float *vz) {
    float m = FUNC1(ry);
    *vx = FUNC1(rx - FUNC0(90)) * m;
    *vy = FUNC2(ry);
    *vz = FUNC2(rx - FUNC0(90)) * m;
}