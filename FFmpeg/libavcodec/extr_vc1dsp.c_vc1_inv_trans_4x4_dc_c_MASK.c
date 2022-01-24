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

__attribute__((used)) static void FUNC1(uint8_t *dest, ptrdiff_t stride, int16_t *block)
{
    int i;
    int dc = block[0];

    dc = (17 * dc +  4) >> 3;
    dc = (17 * dc + 64) >> 7;

    for (i = 0; i < 4; i++) {
        dest[0] = FUNC0(dest[0] + dc);
        dest[1] = FUNC0(dest[1] + dc);
        dest[2] = FUNC0(dest[2] + dc);
        dest[3] = FUNC0(dest[3] + dc);
        dest += stride;
    }
}