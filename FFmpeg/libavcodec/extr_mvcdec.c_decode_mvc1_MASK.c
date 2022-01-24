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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, GetByteContext *gb,
                       uint8_t *dst_start, int width, int height, int linesize)
{
    uint8_t *dst;
    uint16_t v[8];
    int mask, x, y, i;

    for (y = 0; y < height; y += 4) {
        for (x = 0; x < width; x += 4) {
            if (FUNC3(gb) < 6)
                return 0;

            mask = FUNC2(gb);
            v[0] = FUNC2(gb);
            v[1] = FUNC2(gb);
            if ((v[0] & 0x8000)) {
                if (FUNC3(gb) < 12) {
                    FUNC1(avctx, AV_LOG_WARNING, "buffer overflow\n");
                    return AVERROR_INVALIDDATA;
                }
                for (i = 2; i < 8; i++)
                    v[i] = FUNC2(gb);
            } else {
                v[2] = v[4] = v[6] = v[0];
                v[3] = v[5] = v[7] = v[1];
            }

#define PIX16(target, true, false)                                            \
    i = (mask & target) ? true : false;                                       \
    AV_WN16A(dst, v[i] & 0x7FFF);                                             \
    dst += 2;

#define ROW16(row, a1, a0, b1, b0)                                            \
    dst = dst_start + (y + row) * linesize + x * 2;                           \
    PIX16(1 << (row * 4), a1, a0)                                             \
    PIX16(1 << (row * 4 + 1), a1, a0)                                         \
    PIX16(1 << (row * 4 + 2), b1, b0)                                         \
    PIX16(1 << (row * 4 + 3), b1, b0)

            ROW16(0, 0, 1, 2, 3);
            ROW16(1, 0, 1, 2, 3);
            ROW16(2, 4, 5, 6, 7);
            ROW16(3, 4, 5, 6, 7);
        }
    }
    return 0;
}