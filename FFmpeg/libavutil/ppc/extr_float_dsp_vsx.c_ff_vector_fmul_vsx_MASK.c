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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,float const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,float*) ; 

void FUNC4(float *dst,
                        const float *src0, const float *src1,
                        int len)
{
    int i;
    vec_f d0, d1, zero = (vec_f)FUNC1(0);
    for (i = 0; i < len - 7; i += 8) {
        d0 = FUNC2( 0, src0 + i);
        d1 = FUNC2(16, src0 + i);
        d0 = FUNC0(d0, FUNC2( 0, src1 + i), zero);
        d1 = FUNC0(d1, FUNC2(16, src1 + i), zero);
        FUNC3(d0,  0, dst + i);
        FUNC3(d1, 16, dst + i);
    }
}