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
typedef  intptr_t ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(uint8_t *dst, const uint8_t *src, int width, int height,
                     ptrdiff_t stride_dst, ptrdiff_t stride_src)
{
int i, j;

    if (((intptr_t)dst | (intptr_t)src | stride_dst | stride_src) & 15) {
        for (i = 0; i < height; i++) {
            for (j = 0; j < width; j+=8)
                FUNC1(dst+j, src+j);
            dst += stride_dst;
            src += stride_src;
        }
    } else {
        for (i = 0; i < height; i++) {
            for (j = 0; j < width; j+=16)
                FUNC0(dst+j, src+j);
            dst += stride_dst;
            src += stride_src;
        }
    }
}