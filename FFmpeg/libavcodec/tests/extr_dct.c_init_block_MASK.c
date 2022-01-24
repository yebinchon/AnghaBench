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
typedef  int int16_t ;
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(int16_t block[64], int test, int is_idct, AVLFG *prng, int vals)
{
    int i, j;

    FUNC2(block, 0, 64 * sizeof(*block));

    switch (test) {
    case 0:
        for (i = 0; i < 64; i++)
            block[i] = (FUNC0(prng) % (2*vals)) -vals;
        if (is_idct) {
            FUNC1(block);
            for (i = 0; i < 64; i++)
                block[i] >>= 3;
        }
        break;
    case 1:
        j = FUNC0(prng) % 10 + 1;
        for (i = 0; i < j; i++) {
            int idx = FUNC0(prng) % 64;
            block[idx] = FUNC0(prng) % (2*vals) -vals;
        }
        break;
    case 2:
        block[ 0] = FUNC0(prng) % (16*vals) - (8*vals);
        block[63] = (block[0] & 1) ^ 1;
        break;
    }
}