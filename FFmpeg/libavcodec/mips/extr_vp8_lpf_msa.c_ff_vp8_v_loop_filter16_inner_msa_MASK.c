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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(uint8_t *src, ptrdiff_t pitch,
                                      int32_t e, int32_t i, int32_t h)
{
    v16u8 mask, hev, flat;
    v16u8 thresh, b_limit, limit;
    v16u8 p3, p2, p1, p0, q3, q2, q1, q0;

    /* load vector elements */
    FUNC0((src - 4 * pitch), pitch, p3, p2, p1, p0, q0, q1, q2, q3);
    thresh = (v16u8) FUNC4(h);
    b_limit = (v16u8) FUNC4(e);
    limit = (v16u8) FUNC4(i);

    FUNC1(p3, p2, p1, p0, q0, q1, q2, q3, limit, b_limit, thresh,
                 hev, mask, flat);
    FUNC3(p1, p0, q0, q1, mask, hev);

    FUNC2(p1, p0, q0, q1, (src - 2 * pitch), pitch);
}