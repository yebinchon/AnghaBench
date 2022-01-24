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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    int x, y;

    FUNC0(dst, stride, block);

    /* This format is DXT5, but returns premultiplied alpha. It needs to be
     * converted because it's what lavc outputs (and swscale expects). */
    for (y = 0; y < 4; y++)
        for (x = 0; x < 4; x++)
            FUNC1(dst + x * 4 + y * stride);

    return 16;
}