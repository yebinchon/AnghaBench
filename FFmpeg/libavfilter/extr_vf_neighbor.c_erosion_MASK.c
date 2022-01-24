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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int const) ; 

__attribute__((used)) static void FUNC2(uint8_t *dst, const uint8_t *p1, int width,
                    int threshold, const uint8_t *coordinates[], int coord,
                    int maxc)
{
    int x, i;

    for (x = 0; x < width; x++) {
        int min = p1[x];
        int limit = FUNC0(min - threshold, 0);

        for (i = 0; i < 8; i++) {
            if (coord & (1 << i)) {
                min = FUNC1(min, *(coordinates[i] + x));
            }
            min = FUNC0(min, limit);
        }

        dst[x] = min;
    }
}