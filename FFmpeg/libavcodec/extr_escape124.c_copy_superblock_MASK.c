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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(uint16_t* dest, unsigned dest_stride,
                            uint16_t* src, unsigned src_stride)
{
    unsigned y;
    if (src)
        for (y = 0; y < 8; y++)
            FUNC0(dest + y * dest_stride, src + y * src_stride,
                   sizeof(uint16_t) * 8);
    else
        for (y = 0; y < 8; y++)
            FUNC1(dest + y * dest_stride, 0, sizeof(uint16_t) * 8);
}