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
 int /*<<< orphan*/  s0 ; 
 int s1 ; 
 int s2 ; 
 int s3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,float const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,float*) ; 

void FUNC5(float *dst, const float *src0,
                                const float *src1, const float *src2,
                                int len)
{
    int i;
    vec_f d, ss0, ss1, ss2, t0, t1, edges;

    for (i = 0; i < len - 3; i += 4) {
        t0 = FUNC1(0, dst + i);
        t1 = FUNC1(15, dst + i);
        ss0 = FUNC1(0, src0 + i);
        ss1 = FUNC1(0, src1 + i);
        ss2 = FUNC1(0, src2 + i);
        edges = FUNC3(t1, t0, FUNC0(0, 1, 2, 3));
        d = FUNC2(ss0, ss1, ss2);
        t1 = FUNC3(d, edges, FUNC0(s0,s1,s2,s3));
        t0 = FUNC3(edges, d, FUNC0(s0,s1,s2,s3));
        FUNC4(t1, 15, dst + i);
        FUNC4(t0, 0, dst + i);
    }
}