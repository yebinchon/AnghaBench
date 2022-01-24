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
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int16_t *weight, uint8_t *ptr, int stride)
{
    int x, y;
    // FIXME optimize
    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++) {
            int x2, y2;
            int sum = 0;
            int sqr = 0;
            int count = 0;

            for (y2 = FUNC0(y - 1, 0); y2 < FUNC1(8, y + 2); y2++) {
                for (x2= FUNC0(x - 1, 0); x2 < FUNC1(8, x + 2); x2++) {
                    int v = ptr[x2 + y2 * stride];
                    sum += v;
                    sqr += v * v;
                    count++;
                }
            }
            weight[x + 8 * y]= (36 * FUNC2(count * sqr - sum * sum)) / count;
        }
    }
}