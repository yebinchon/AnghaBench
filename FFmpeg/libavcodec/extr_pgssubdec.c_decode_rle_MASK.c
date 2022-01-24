#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int err_recognition; } ;
struct TYPE_7__ {int w; int h; scalar_t__* data; } ;
typedef  TYPE_1__ AVSubtitleRect ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, AVSubtitleRect *rect,
                      const uint8_t *buf, unsigned int buf_size)
{
    const uint8_t *rle_bitmap_end;
    int pixel_count, line_count;

    rle_bitmap_end = buf + buf_size;

    rect->data[0] = FUNC2(rect->w, rect->h);

    if (!rect->data[0])
        return FUNC0(ENOMEM);

    pixel_count = 0;
    line_count  = 0;

    while (buf < rle_bitmap_end && line_count < rect->h) {
        uint8_t flags, color;
        int run;

        color = FUNC3(&buf);
        run   = 1;

        if (color == 0x00) {
            flags = FUNC3(&buf);
            run   = flags & 0x3f;
            if (flags & 0x40)
                run = (run << 8) + FUNC3(&buf);
            color = flags & 0x80 ? FUNC3(&buf) : 0;
        }

        if (run > 0 && pixel_count + run <= rect->w * rect->h) {
            FUNC5(rect->data[0] + pixel_count, color, run);
            pixel_count += run;
        } else if (!run) {
            /*
             * New Line. Check if correct pixels decoded, if not display warning
             * and adjust bitmap pointer to correct new line position.
             */
            if (pixel_count % rect->w > 0) {
                FUNC1(avctx, AV_LOG_ERROR, "Decoded %d pixels, when line should be %d pixels\n",
                       pixel_count % rect->w, rect->w);
                if (avctx->err_recognition & AV_EF_EXPLODE) {
                    return AVERROR_INVALIDDATA;
                }
            }
            line_count++;
        }
    }

    if (pixel_count < rect->w * rect->h) {
        FUNC1(avctx, AV_LOG_ERROR, "Insufficient RLE data for subtitle\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC4(avctx, "Pixel Count = %d, Area = %d\n", pixel_count, rect->w * rect->h);

    return 0;
}