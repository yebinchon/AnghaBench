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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC1(const uint8_t *y, const uint8_t *u,
                                 const uint8_t *v, uint8_t *dst,
                                 ptrdiff_t width)
{
    uint32_t val;
    int i;

    /* unroll this to match the assembly */
    for (i = 0; i < width - 11; i += 12) {
        FUNC0(u, y, v, 8);
        FUNC0(y, u, y, 8);
        FUNC0(v, y, u, 8);
        FUNC0(y, v, y, 8);
        FUNC0(u, y, v, 8);
        FUNC0(y, u, y, 8);
        FUNC0(v, y, u, 8);
        FUNC0(y, v, y, 8);
    }
}