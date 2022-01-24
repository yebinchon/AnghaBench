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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* gt16x16_cnst ; 

__attribute__((used)) static void FUNC7(int16_t *coeffs)
{
    int16_t i, j, k;
    int16_t buf[256];
    int16_t *buf_ptr = &buf[0];
    int16_t *src = coeffs;
    const int16_t *filter = &gt16x16_cnst[0];
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 in8, in9, in10, in11, in12, in13, in14, in15;
    v8i16 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 src0_r, src1_r, src2_r, src3_r, src4_r, src5_r, src6_r, src7_r;
    v8i16 src0_l, src1_l, src2_l, src3_l, src4_l, src5_l, src6_l, src7_l;

    for (i = 2; i--;) {
        FUNC3(src, 16, in0, in1, in2, in3, in4, in5, in6, in7,
                in8, in9, in10, in11, in12, in13, in14, in15);

        FUNC2(in4, in0, in12, in8, in6, in2, in14, in10,
                   src0_r, src1_r, src2_r, src3_r);
        FUNC2(in5, in1, in13, in9, in3, in7, in11, in15,
                   src4_r, src5_r, src6_r, src7_r);
        FUNC1(in4, in0, in12, in8, in6, in2, in14, in10,
                   src0_l, src1_l, src2_l, src3_l);
        FUNC1(in5, in1, in13, in9, in3, in7, in11, in15,
                   src4_l, src5_l, src6_l, src7_l);
        FUNC0(src0_r, src1_r, src2_r, src3_r, src4_r, src5_r,
                           src6_r, src7_r, src0_l, src1_l, src2_l, src3_l,
                           src4_l, src5_l, src6_l, src7_l, 7);

        src += 8;
        buf_ptr = (&buf[0] + 8);
        filter = &gt16x16_cnst[0];
    }

    src = &buf[0];
    buf_ptr = coeffs;
    filter = &gt16x16_cnst[0];

    for (i = 2; i--;) {
        FUNC3(src, 8, in0, in8, in1, in9, in2, in10, in3, in11,
                in4, in12, in5, in13, in6, in14, in7, in15);
        FUNC6(in0, in1, in2, in3, in4, in5, in6, in7,
                           in0, in1, in2, in3, in4, in5, in6, in7);
        FUNC6(in8, in9, in10, in11, in12, in13, in14, in15,
                           in8, in9, in10, in11, in12, in13, in14, in15);
        FUNC2(in4, in0, in12, in8, in6, in2, in14, in10,
                   src0_r, src1_r, src2_r, src3_r);
        FUNC2(in5, in1, in13, in9, in3, in7, in11, in15,
                   src4_r, src5_r, src6_r, src7_r);
        FUNC1(in4, in0, in12, in8, in6, in2, in14, in10,
                   src0_l, src1_l, src2_l, src3_l);
        FUNC1(in5, in1, in13, in9, in3, in7, in11, in15,
                   src4_l, src5_l, src6_l, src7_l);
        FUNC0(src0_r, src1_r, src2_r, src3_r, src4_r, src5_r,
                           src6_r, src7_r, src0_l, src1_l, src2_l, src3_l,
                           src4_l, src5_l, src6_l, src7_l, 12);

        src += 128;
        buf_ptr = coeffs + 8;
        filter = &gt16x16_cnst[0];
    }

    FUNC4(coeffs, 16, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC6(in0, in1, in2, in3, in4, in5, in6, in7,
                       vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7);
    FUNC5(vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, coeffs, 16);

    FUNC4((coeffs + 8), 16, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC6(in0, in1, in2, in3, in4, in5, in6, in7,
                       vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7);
    FUNC4((coeffs + 128), 16, in8, in9, in10, in11, in12, in13, in14, in15);
    FUNC5(vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, (coeffs + 128), 16);
    FUNC6(in8, in9, in10, in11, in12, in13, in14, in15,
                       vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7);
    FUNC5(vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, (coeffs + 8), 16);

    FUNC4((coeffs + 136), 16, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC6(in0, in1, in2, in3, in4, in5, in6, in7,
                       vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7);
    FUNC5(vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, (coeffs + 136), 16);
}