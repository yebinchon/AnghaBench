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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(uint8_t *src, ptrdiff_t src_linesize,
                                        uint8_t *dst, ptrdiff_t dst_linesize,
                                        int w, int h)
{
    int x, y;
    for (y = 0; y < h; y++, dst += dst_linesize, src += 6) {
        for (x = 0; x < w; x++) {
            int64_t v = FUNC0(src + x*src_linesize);
            FUNC1(dst + 6*x, v);
        }
    }
}