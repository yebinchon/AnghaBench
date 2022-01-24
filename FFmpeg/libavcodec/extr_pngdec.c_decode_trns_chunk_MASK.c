#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int hdr_state; int pic_state; scalar_t__ color_type; int* palette; int bit_depth; int* transparent_color_be; int has_trns; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ PNGDecContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ PNG_COLOR_TYPE_GRAY ; 
 scalar_t__ PNG_COLOR_TYPE_PALETTE ; 
 scalar_t__ PNG_COLOR_TYPE_RGB ; 
 int PNG_IDAT ; 
 int PNG_IHDR ; 
 int PNG_PLTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, PNGDecContext *s,
                             uint32_t length)
{
    int v, i;

    if (!(s->hdr_state & PNG_IHDR)) {
        FUNC1(avctx, AV_LOG_ERROR, "trns before IHDR\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->pic_state & PNG_IDAT) {
        FUNC1(avctx, AV_LOG_ERROR, "trns after IDAT\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->color_type == PNG_COLOR_TYPE_PALETTE) {
        if (length > 256 || !(s->hdr_state & PNG_PLTE))
            return AVERROR_INVALIDDATA;

        for (i = 0; i < length; i++) {
            unsigned v = FUNC4(&s->gb);
            s->palette[i] = (s->palette[i] & 0x00ffffff) | (v << 24);
        }
    } else if (s->color_type == PNG_COLOR_TYPE_GRAY || s->color_type == PNG_COLOR_TYPE_RGB) {
        if ((s->color_type == PNG_COLOR_TYPE_GRAY && length != 2) ||
            (s->color_type == PNG_COLOR_TYPE_RGB && length != 6) ||
            s->bit_depth == 1)
            return AVERROR_INVALIDDATA;

        for (i = 0; i < length / 2; i++) {
            /* only use the least significant bits */
            v = FUNC2(FUNC3(&s->gb), s->bit_depth);

            if (s->bit_depth > 8)
                FUNC0(&s->transparent_color_be[2 * i], v);
            else
                s->transparent_color_be[i] = v;
        }
    } else {
        return AVERROR_INVALIDDATA;
    }

    FUNC5(&s->gb, 4); /* crc */
    s->has_trns = 1;

    return 0;
}