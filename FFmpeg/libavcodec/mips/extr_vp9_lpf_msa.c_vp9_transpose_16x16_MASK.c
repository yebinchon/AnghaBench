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
typedef  scalar_t__ v8i16 ;
typedef  scalar_t__ v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC11(uint8_t *input, int32_t in_pitch,
                                uint8_t *output, int32_t out_pitch)
{
    v16u8 row0, row1, row2, row3, row4, row5, row6, row7;
    v16u8 row8, row9, row10, row11, row12, row13, row14, row15;
    v8i16 tmp0, tmp1, tmp4, tmp5, tmp6, tmp7;
    v4i32 tmp2, tmp3;
    v16u8 p7, p6, p5, p4, p3, p2, p1, p0, q0, q1, q2, q3, q4, q5, q6, q7;

    FUNC3(input, in_pitch, row0, row1, row2, row3, row4, row5, row6, row7);
    input += (8 * in_pitch);
    FUNC3(input, in_pitch,
           row8, row9, row10, row11, row12, row13, row14, row15);

    FUNC5(row0, row1, row2, row3, row4, row5, row6, row7,
                        row8, row9, row10, row11, row12, row13, row14, row15,
                        p7, p6, p5, p4, p3, p2, p1, p0);

    /* transpose 16x8 matrix into 8x16 */
    /* total 8 intermediate register and 32 instructions */
    q7 = (v16u8) FUNC8((v2i64) row8, (v2i64) row0);
    q6 = (v16u8) FUNC8((v2i64) row9, (v2i64) row1);
    q5 = (v16u8) FUNC8((v2i64) row10, (v2i64) row2);
    q4 = (v16u8) FUNC8((v2i64) row11, (v2i64) row3);
    q3 = (v16u8) FUNC8((v2i64) row12, (v2i64) row4);
    q2 = (v16u8) FUNC8((v2i64) row13, (v2i64) row5);
    q1 = (v16u8) FUNC8((v2i64) row14, (v2i64) row6);
    q0 = (v16u8) FUNC8((v2i64) row15, (v2i64) row7);

    FUNC0(q7, q6, q5, q4, tmp0, tmp1);
    tmp4 = (v8i16) FUNC7((v16i8) q6, (v16i8) q7);
    tmp5 = (v8i16) FUNC7((v16i8) q4, (v16i8) q5);

    FUNC1(q3, q2, q1, q0, q5, q7);
    tmp6 = (v8i16) FUNC7((v16i8) q2, (v16i8) q3);
    tmp7 = (v8i16) FUNC7((v16i8) q0, (v16i8) q1);

    FUNC2(tmp0, tmp1, q5, q7, tmp2, tmp3);
    q0 = (v16u8) FUNC6(tmp3, tmp2);
    q4 = (v16u8) FUNC10(tmp3, tmp2);

    tmp2 = (v4i32) FUNC9(tmp1, tmp0);
    tmp3 = (v4i32) FUNC9((v8i16) q7, (v8i16) q5);
    q2 = (v16u8) FUNC6(tmp3, tmp2);
    q6 = (v16u8) FUNC10(tmp3, tmp2);

    FUNC2(tmp4, tmp5, tmp6, tmp7, tmp2, tmp3);
    q1 = (v16u8) FUNC6(tmp3, tmp2);
    q5 = (v16u8) FUNC10(tmp3, tmp2);

    tmp2 = (v4i32) FUNC9(tmp5, tmp4);
    tmp3 = (v4i32) FUNC9(tmp7, tmp6);
    q3 = (v16u8) FUNC6(tmp3, tmp2);
    q7 = (v16u8) FUNC10(tmp3, tmp2);

    FUNC4(p7, p6, p5, p4, p3, p2, p1, p0, output, out_pitch);
    output += (8 * out_pitch);
    FUNC4(q0, q1, q2, q3, q4, q5, q6, q7, output, out_pitch);
}