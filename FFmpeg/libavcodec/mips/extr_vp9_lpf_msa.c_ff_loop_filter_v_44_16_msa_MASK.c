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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(uint8_t *src, ptrdiff_t pitch,
                                int32_t b_limit_ptr,
                                int32_t limit_ptr,
                                int32_t thresh_ptr)
{
    v16u8 mask, hev, flat, thresh0, b_limit0, limit0, thresh1, b_limit1, limit1;
    v16u8 p3, p2, p1, p0, q3, q2, q1, q0;

    /* load vector elements */
    FUNC0((src - 4 * pitch), pitch, p3, p2, p1, p0, q0, q1, q2, q3);

    thresh0 = (v16u8) FUNC4(thresh_ptr);
    thresh1 = (v16u8) FUNC4(thresh_ptr >> 8);
    thresh0 = (v16u8) FUNC5((v2i64) thresh1, (v2i64) thresh0);

    b_limit0 = (v16u8) FUNC4(b_limit_ptr);
    b_limit1 = (v16u8) FUNC4(b_limit_ptr >> 8);
    b_limit0 = (v16u8) FUNC5((v2i64) b_limit1, (v2i64) b_limit0);

    limit0 = (v16u8) FUNC4(limit_ptr);
    limit1 = (v16u8) FUNC4(limit_ptr >> 8);
    limit0 = (v16u8) FUNC5((v2i64) limit1, (v2i64) limit0);

    FUNC1(p3, p2, p1, p0, q0, q1, q2, q3, limit0, b_limit0, thresh0,
                 hev, mask, flat);
    FUNC3(p1, p0, q0, q1, mask, hev, p1, p0, q0, q1);

    FUNC2(p1, p0, q0, q1, (src - 2 * pitch), pitch);
}