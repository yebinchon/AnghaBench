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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(uint8_t *src, ptrdiff_t pitch, int b_limit_in,
                                int limit_in, int thresh_in)
{
    uint8_t *temp_src;
    v16u8 p3, p2, p1, p0, q3, q2, q1, q0;
    v16u8 mask, hev, flat, thresh, limit, b_limit;
    v16u8 row0, row1, row2, row3, row4, row5, row6, row7, row8;
    v16u8 row9, row10, row11, row12, row13, row14, row15;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;

    b_limit = (v16u8) FUNC9(b_limit_in);
    limit = (v16u8) FUNC9(limit_in);
    thresh = (v16u8) FUNC9(thresh_in);
    temp_src = src - 4;
    FUNC4(temp_src, pitch, row0, row1, row2, row3, row4, row5, row6, row7);
    temp_src += (8 * pitch);
    FUNC4(temp_src, pitch,
           row8, row9, row10, row11, row12, row13, row14, row15);
    FUNC6(row0, row1, row2, row3, row4, row5, row6, row7,
                        row8, row9, row10, row11, row12, row13, row14, row15,
                        p3, p2, p1, p0, q0, q1, q2, q3);

    FUNC5(p3, p2, p1, p0, q0, q1, q2, q3, limit, b_limit, thresh,
                 hev, mask, flat);
    FUNC7(p2, p1, p0, q0, q1, q2, mask, hev);
    FUNC3(p1, p2, q0, p0, tmp0, tmp1);
    FUNC2(tmp1, tmp0, tmp3, tmp4);
    FUNC0(p1, p2, q0, p0, tmp0, tmp1);
    FUNC2(tmp1, tmp0, tmp6, tmp7);
    FUNC1(q2, q1, tmp2, tmp5);

    temp_src = src - 3;
    FUNC8(tmp3, 0, tmp2, 0, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp3, 1, tmp2, 1, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp3, 2, tmp2, 2, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp3, 3, tmp2, 3, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp4, 0, tmp2, 4, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp4, 1, tmp2, 5, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp4, 2, tmp2, 6, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp4, 3, tmp2, 7, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp6, 0, tmp5, 0, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp6, 1, tmp5, 1, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp6, 2, tmp5, 2, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp6, 3, tmp5, 3, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp7, 0, tmp5, 4, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp7, 1, tmp5, 5, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp7, 2, tmp5, 6, temp_src, 4);
    temp_src += pitch;
    FUNC8(tmp7, 3, tmp5, 7, temp_src, 4);
}