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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    int i;

    for (i = 0; i < 64; i += 8)
        FUNC2(block + i);
    for (i = 0; i < 8; i++)
        FUNC1(block + i);

    for (i = 0; i < 8; i++) {
        dest[0] = FUNC0(block[0]);
        dest[1] = FUNC0(block[1]);
        dest[2] = FUNC0(block[2]);
        dest[3] = FUNC0(block[3]);
        dest[4] = FUNC0(block[4]);
        dest[5] = FUNC0(block[5]);
        dest[6] = FUNC0(block[6]);
        dest[7] = FUNC0(block[7]);
        dest += line_size;
        block += 8;
    }
}