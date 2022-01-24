#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned int uint16_t ;
struct TYPE_5__ {int width; int height; } ;
struct TYPE_4__ {unsigned int* frame_buffer; TYPE_3__* avctx; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ FourXContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(FourXContext *f, const uint8_t *buf, int length)
{
    int x, y, x2, y2;
    const int width  = f->avctx->width;
    const int height = f->avctx->height;
    const int mbs    = (FUNC0(width, 16) >> 4) * (FUNC0(height, 16) >> 4);
    uint16_t *dst    = f->frame_buffer;
    const uint8_t *buf_end = buf + length;
    GetByteContext g3;

    if (length < mbs * 8) {
        FUNC1(f->avctx, AV_LOG_ERROR, "packet size too small\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC4(&g3, buf, length);

    for (y = 0; y < height; y += 16) {
        for (x = 0; x < width; x += 16) {
            unsigned int color[4] = { 0 }, bits;
            if (buf_end - buf < 8)
                return AVERROR_INVALIDDATA;
            // warning following is purely guessed ...
            color[0] = FUNC2(&g3);
            color[1] = FUNC2(&g3);

            if (color[0] & 0x8000)
                FUNC1(f->avctx, AV_LOG_ERROR, "unk bit 1\n");
            if (color[1] & 0x8000)
                FUNC1(f->avctx, AV_LOG_ERROR, "unk bit 2\n");

            color[2] = FUNC5(color[0], color[1]);
            color[3] = FUNC5(color[1], color[0]);

            bits = FUNC3(&g3);
            for (y2 = 0; y2 < 16; y2++) {
                for (x2 = 0; x2 < 16; x2++) {
                    int index = 2 * (x2 >> 2) + 8 * (y2 >> 2);
                    dst[y2 * width + x2] = color[(bits >> index) & 3];
                }
            }
            dst += 16;
        }
        dst += 16 * width - x;
    }

    return 0;
}