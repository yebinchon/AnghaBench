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
typedef  scalar_t__ v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(uint8_t *src_u, uint8_t *src_v,
                                       ptrdiff_t pitch, int b_limit_in,
                                       int limit_in, int thresh_in)
{
    v16u8 p3, p2, p1, p0, q3, q2, q1, q0;
    v16u8 mask, hev, flat, thresh, limit, b_limit;
    v16u8 row0, row1, row2, row3, row4, row5, row6, row7, row8;
    v16u8 row9, row10, row11, row12, row13, row14, row15;
    v4i32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;

    thresh = (v16u8) FUNC7(thresh_in);
    limit = (v16u8) FUNC7(limit_in);
    b_limit = (v16u8) FUNC7(b_limit_in);

    FUNC2(src_u - 4, pitch, row0, row1, row2, row3, row4, row5, row6, row7);
    FUNC2(src_v - 4, pitch,
           row8, row9, row10, row11, row12, row13, row14, row15);
    FUNC5(row0, row1, row2, row3, row4, row5, row6, row7,
                        row8, row9, row10, row11, row12, row13, row14, row15,
                        p3, p2, p1, p0, q0, q1, q2, q3);

    FUNC3(p3, p2, p1, p0, q0, q1, q2, q3, limit, b_limit, thresh,
                 hev, mask, flat);
    FUNC6(p1, p0, q0, q1, mask, hev);
    FUNC1(p0, p1, q1, q0, tmp0, tmp1);
    FUNC0(tmp1, tmp0, tmp2, tmp3);
    tmp0 = (v4i32) FUNC8((v16i8) p0, (v16i8) p1);
    tmp1 = (v4i32) FUNC8((v16i8) q1, (v16i8) q0);
    FUNC0(tmp1, tmp0, tmp4, tmp5);

    FUNC4(tmp2, tmp3, 0, 1, 2, 3, 0, 1, 2, 3, src_u - 2, pitch);
    FUNC4(tmp4, tmp5, 0, 1, 2, 3, 0, 1, 2, 3, src_v - 2, pitch);
}