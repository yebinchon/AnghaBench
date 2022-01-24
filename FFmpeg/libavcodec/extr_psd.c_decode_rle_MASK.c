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
typedef  void* uint8_t ;
typedef  int int8_t ;
struct TYPE_3__ {unsigned int height; unsigned int channel_count; unsigned int line_size; unsigned long uncompressed_size; void** tmp; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ PSDContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC4(PSDContext * s){
    unsigned int scanline_count;
    unsigned int sl, count;
    unsigned long target_index = 0;
    unsigned int p;
    int8_t rle_char;
    unsigned int repeat_count;
    uint8_t v;

    scanline_count = s->height * s->channel_count;

    /* scanline table */
    if (FUNC2(&s->gb) < scanline_count * 2) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Not enough data for rle scanline table.\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC3(&s->gb, scanline_count * 2);/* size of each scanline */

    /* decode rle data scanline by scanline */
    for (sl = 0; sl < scanline_count; sl++) {
        count = 0;

        while (count < s->line_size) {
            rle_char = FUNC1(&s->gb);

            if (rle_char <= 0) {/* byte repeat */
                repeat_count = rle_char * -1;

                if (FUNC2(&s->gb) < 1) {
                    FUNC0(s->avctx, AV_LOG_ERROR, "Not enough data for rle scanline.\n");
                    return AVERROR_INVALIDDATA;
                }

                if (target_index + repeat_count >= s->uncompressed_size) {
                    FUNC0(s->avctx, AV_LOG_ERROR, "Invalid rle char.\n");
                    return AVERROR_INVALIDDATA;
                }

                v = FUNC1(&s->gb);
                for (p = 0; p <= repeat_count; p++) {
                    s->tmp[target_index++] = v;
                }
                count += repeat_count + 1;
            } else {
                if (FUNC2(&s->gb) < rle_char) {
                    FUNC0(s->avctx, AV_LOG_ERROR, "Not enough data for rle scanline.\n");
                    return AVERROR_INVALIDDATA;
                }

                if (target_index + rle_char >= s->uncompressed_size) {
                    FUNC0(s->avctx, AV_LOG_ERROR, "Invalid rle char.\n");
                    return AVERROR_INVALIDDATA;
                }

                for (p = 0; p <= rle_char; p++) {
                    v = FUNC1(&s->gb);
                    s->tmp[target_index++] = v;
                }
                count += rle_char + 1;
            }
        }
    }

    return 0;
}