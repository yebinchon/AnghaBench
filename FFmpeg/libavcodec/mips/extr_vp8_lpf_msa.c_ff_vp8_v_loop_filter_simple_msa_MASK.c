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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(uint8_t *src, ptrdiff_t pitch,
                                     int b_limit_ptr)
{
    v16u8 p1, p0, q1, q0;
    v16u8 mask, b_limit;

    b_limit = (v16u8) FUNC4(b_limit_ptr);
    /* load vector elements */
    FUNC0(src - (pitch << 1), pitch, p1, p0, q0, q1);
    FUNC3(p1, p0, q0, q1, b_limit, mask);
    FUNC2(p1, p0, q0, q1, mask);
    FUNC1(p0, q0, (src - pitch), pitch);
}