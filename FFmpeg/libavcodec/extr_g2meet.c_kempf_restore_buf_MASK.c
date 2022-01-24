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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(const uint8_t *src, int len,
                              uint8_t *dst, int stride,
                              const uint8_t *jpeg_tile, int tile_stride,
                              int width, int height,
                              const uint8_t *pal, int npal, int tidx)
{
    GetBitContext gb;
    int i, j, nb, col;
    int ret;
    int align_width = FUNC0(width, 16);

    if ((ret = FUNC2(&gb, src, len)) < 0)
        return ret;

    if (npal <= 2)       nb = 1;
    else if (npal <= 4)  nb = 2;
    else if (npal <= 16) nb = 4;
    else                 nb = 8;

    for (j = 0; j < height; j++, dst += stride, jpeg_tile += tile_stride) {
        if (FUNC1(&gb, 8))
            continue;
        for (i = 0; i < width; i++) {
            col = FUNC1(&gb, nb);
            if (col != tidx)
                FUNC3(dst + i * 3, pal + col * 3, 3);
            else
                FUNC3(dst + i * 3, jpeg_tile + i * 3, 3);
        }
        FUNC4(&gb, nb * (align_width - width));
    }

    return 0;
}