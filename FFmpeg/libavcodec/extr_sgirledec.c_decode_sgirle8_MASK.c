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
typedef  int uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, uint8_t *dst,
                          const uint8_t *src, int src_size,
                          int width, int height, ptrdiff_t linesize)
{
    const uint8_t *src_end = src + src_size;
    int x = 0, y = 0;

#define INC_XY(n)                                                             \
    x += n;                                                                   \
    if (x >= width) {                                                         \
        y++;                                                                  \
        if (y >= height)                                                      \
            return 0;                                                         \
        x = 0;                                                                \
    }

    while (src_end - src >= 2) {
        uint8_t v = *src++;
        if (v > 0 && v < 0xC0) {
            do {
                int length = FUNC0(v, width - x);
                if (length <= 0)
                    break;
                FUNC5(dst + y * linesize + x, FUNC3(*src), length);
                INC_XY(length);
                v -= length;
            } while (v > 0);
            src++;
        } else if (v >= 0xC1) {
            v -= 0xC0;
            do {
                int length = FUNC1(v, width - x, src_end - src);
                if (src_end - src < length || length <= 0)
                    break;
                FUNC6(dst + y * linesize + x, src, length);
                INC_XY(length);
                src += length;
                v   -= length;
            } while (v > 0);
        } else {
            FUNC4(avctx, "opcode %d", v);
            return AVERROR_PATCHWELCOME;
        }
    }
    return 0;
}