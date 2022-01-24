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
typedef  int /*<<< orphan*/  vec_u8 ;
typedef  scalar_t__ vec_f ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,float const*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,float*) ; 

void FUNC7(float *dst, const float *src0,
                                   const float *src1, const float *win, int len)
{
    vec_f zero, t0, t1, s0, s1, wi, wj;
    const vec_u8 reverse = FUNC0(3, 2, 1, 0);
    int i, j;

    dst  += len;
    win  += len;
    src0 += len;

    zero = (vec_f)FUNC5(0);

    for (i = -len * 4, j = len * 4 - 16; i < 0; i += 16, j -= 16) {
        s0 = FUNC1(i, src0);
        s1 = FUNC1(j, src1);
        wi = FUNC1(i, win);
        wj = FUNC1(j, win);

        s1 = FUNC4(s1, s1, reverse);
        wj = FUNC4(wj, wj, reverse);

        t0 = FUNC2(s0, wj, zero);
        t0 = FUNC3(s1, wi, t0);
        t1 = FUNC2(s0, wi, zero);
        t1 = FUNC2(s1, wj, t1);
        t1 = FUNC4(t1, t1, reverse);

        FUNC6(t0, i, dst);
        FUNC6(t1, j, dst);
    }
}