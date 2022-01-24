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
typedef  int /*<<< orphan*/  vec_f ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 

void FUNC3(float *dst, const float *src0,
                            const float *src1, const float *src2,
                            int len)
{
    int i;
    vec_f d, s0, s1, s2;

    for (i = 0; i < len - 3; i += 4) {
        s0 = FUNC1(0, src0 + i);
        s1 = FUNC1(0, src1 + i);
        s2 = FUNC1(0, src2 + i);
        d = FUNC0(s0, s1, s2);
        FUNC2(d, 0, dst + i);
    }
}