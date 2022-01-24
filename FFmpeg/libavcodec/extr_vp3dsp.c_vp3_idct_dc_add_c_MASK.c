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
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(uint8_t *dest /* align 8 */, ptrdiff_t stride,
                              int16_t *block /* align 16 */)
{
    int i, dc = (block[0] + 15) >> 5;

    for (i = 0; i < 8; i++) {
        dest[0] = FUNC0(dest[0] + dc);
        dest[1] = FUNC0(dest[1] + dc);
        dest[2] = FUNC0(dest[2] + dc);
        dest[3] = FUNC0(dest[3] + dc);
        dest[4] = FUNC0(dest[4] + dc);
        dest[5] = FUNC0(dest[5] + dc);
        dest[6] = FUNC0(dest[6] + dc);
        dest[7] = FUNC0(dest[7] + dc);
        dest   += stride;
    }
    block[0] = 0;
}