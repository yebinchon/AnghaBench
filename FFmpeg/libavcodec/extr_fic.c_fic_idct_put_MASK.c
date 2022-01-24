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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC2(uint8_t *dst, int stride, int16_t *block)
{
    int i, j;
    int16_t *ptr;

    ptr = block;
    FUNC1(ptr++, 8, 13, (1 << 12) + (1 << 17));
    for (i = 1; i < 8; i++) {
        FUNC1(ptr, 8, 13, 1 << 12);
        ptr++;
    }

    ptr = block;
    for (i = 0; i < 8; i++) {
        FUNC1(ptr, 1, 20, 0);
        ptr += 8;
    }

    ptr = block;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++)
            dst[i] = FUNC0(ptr[i]);
        dst += stride;
        ptr += 8;
    }
}