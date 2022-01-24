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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uint8_t *dst, const uint8_t *src1,
                                 const uint8_t *src2, ptrdiff_t stride, int h)
{
    int i;

    for (i = 0; i < h; i++) {
        uint32_t a, b;

        a = FUNC0(&src1[i * stride]);
        b = FUNC0(&src2[i * stride]);
        FUNC1(&dst[i * stride], FUNC2(a, b));
        a = FUNC0(&src1[i * stride + 4]);
        b = FUNC0(&src2[i * stride + 4]);
        FUNC1(&dst[i * stride + 4], FUNC2(a, b));
    }
}