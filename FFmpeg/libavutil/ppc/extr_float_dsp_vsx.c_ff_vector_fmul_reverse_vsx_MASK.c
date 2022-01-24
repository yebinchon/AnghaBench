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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,float const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,float*) ; 

void FUNC6(float *dst, const float *src0,
                                const float *src1, int len)
{
    int i;
    vec_f d, s0, s1, h0, l0, s2, s3;
    vec_f zero = (vec_f)FUNC3(0);

    src1 += len - 4;
    for (i = 0; i < len - 7; i += 8) {
        s1 = FUNC4(0, src1 - i);              // [a,b,c,d]
        s0 = FUNC4(0, src0 + i);
        l0 = FUNC2(s1, s1);               // [c,c,d,d]
        s3 = FUNC4(-16, src1 - i);
        h0 = FUNC1(s1, s1);               // [a,a,b,b]
        s2 = FUNC4(16, src0 + i);
        s1 = FUNC1(FUNC2(l0, h0),    // [d,b,d,b]
                        FUNC1(l0, h0));   // [c,a,c,a]
        // [d,c,b,a]
        l0 = FUNC2(s3, s3);
        d = FUNC0(s0, s1, zero);
        h0 = FUNC1(s3, s3);
        FUNC5(d, 0, dst + i);
        s3 = FUNC1(FUNC2(l0, h0),
                        FUNC1(l0, h0));
        d = FUNC0(s2, s3, zero);
        FUNC5(d, 16, dst + i);
    }
}