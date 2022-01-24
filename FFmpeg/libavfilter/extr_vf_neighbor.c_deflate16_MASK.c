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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 void* FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(uint8_t *dstp, const uint8_t *p1, int width,
                      int threshold, const uint8_t *coordinates[], int coord,
                      int maxc)
{
    uint16_t *dst = (uint16_t *)dstp;
    int x, i;

    for (x = 0; x < width; x++) {
        int sum = 0;
        int limit = FUNC1(FUNC0(&p1[2 * x]) - threshold, 0);

        for (i = 0; i < 8; sum += FUNC0(coordinates[i++] + x * 2));

        dst[x] = FUNC1(FUNC2(sum / 8, FUNC0(&p1[2 * x])), limit);
    }
}