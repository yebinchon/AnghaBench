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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    int i;
    int16_t *ptr;

    /* butterfly */
    ptr = block;
    for(i=0;i<4;i++) {
        FUNC0(0);
        FUNC0(1);
        FUNC0(2);
        FUNC0(3);
        FUNC0(4);
        FUNC0(5);
        FUNC0(6);
        FUNC0(7);
        ptr += 2 * 8;
    }

    /* IDCT8 on each line */
    for(i=0; i<8; i++) {
        FUNC2(block + i*8, 0);
    }

    /* IDCT4 and store */
    for(i=0;i<8;i++) {
        FUNC1(dest + i, 2 * line_size, block + i);
        FUNC1(dest + line_size + i, 2 * line_size, block + 8 + i);
    }
}