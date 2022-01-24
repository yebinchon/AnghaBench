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
 size_t FUNC0 (int,int,int) ; 
 int XZ_HI ; 
 int XZ_LO ; 
 int Y_SIZE ; 

void FUNC1(
    char *opaque, char *light,
    int x, int y, int z, int w, int force)
{
    if (x + w < XZ_LO || z + w < XZ_LO) {
        return;
    }
    if (x - w > XZ_HI || z - w > XZ_HI) {
        return;
    }
    if (y < 0 || y >= Y_SIZE) {
        return;
    }
    if (light[FUNC0(x, y, z)] >= w) {
        return;
    }
    if (!force && opaque[FUNC0(x, y, z)]) {
        return;
    }
    light[FUNC0(x, y, z)] = w--;
    FUNC1(opaque, light, x - 1, y, z, w, 0);
    FUNC1(opaque, light, x + 1, y, z, w, 0);
    FUNC1(opaque, light, x, y - 1, z, w, 0);
    FUNC1(opaque, light, x, y + 1, z, w, 0);
    FUNC1(opaque, light, x, y, z - 1, w, 0);
    FUNC1(opaque, light, x, y, z + 1, w, 0);
}