#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int** frame; int width; int frame_size; int* dirty; size_t current_frame; int video_size; int height; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ PAFVideoDecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int** block_sequences ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int,int const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int const**,int const**) ; 

__attribute__((used)) static int FUNC12(PAFVideoDecContext *c, uint8_t *pkt, uint8_t code)
{
    uint32_t opcode_size, offset;
    uint8_t *dst, *dend, mask = 0, color = 0;
    const uint8_t *src, *send, *opcodes;
    int i, j, op = 0;

    i = FUNC1(&c->gb);
    if (i) {
        if (code & 0x10) {
            int align;

            align = FUNC6(&c->gb) & 3;
            if (align)
                FUNC4(&c->gb, 4 - align);
        }
        do {
            int page, val, x, y;
            val    = FUNC0(&c->gb);
            page   = val >> 14;
            x      = (val & 0x7F) * 2;
            y      = ((val >> 7) & 0x7F) * 2;
            dst    = c->frame[page] + x + y * c->width;
            dend   = c->frame[page] + c->frame_size;
            offset = (x & 0x7F) * 2;
            j      = FUNC3(&c->gb) + offset;
            if (FUNC2(&c->gb) < (j - offset) * 16)
                return AVERROR_INVALIDDATA;
            c->dirty[page] = 1;
            do {
                offset++;
                if (dst + 3 * c->width + 4 > dend)
                    return AVERROR_INVALIDDATA;
                FUNC10(c, dst, c->width);
                if ((offset & 0x3F) == 0)
                    dst += c->width * 3;
                dst += 4;
            } while (offset < j);
        } while (--i);
    }

    dst  = c->frame[c->current_frame];
    dend = c->frame[c->current_frame] + c->frame_size;
    do {
        FUNC11(c, &src, &send);
        if ((src + 3 * c->width + 4 > send) ||
            (dst + 3 * c->width + 4 > dend) ||
            FUNC2(&c->gb) < 4)
            return AVERROR_INVALIDDATA;
        FUNC7(dst, src, c->width, c->width, 4);
        i++;
        if ((i & 0x3F) == 0)
            dst += c->width * 3;
        dst += 4;
    } while (i < c->video_size / 16);

    opcode_size = FUNC3(&c->gb);
    FUNC4(&c->gb, 2);

    if (FUNC2(&c->gb) < opcode_size)
        return AVERROR_INVALIDDATA;

    opcodes = pkt + FUNC6(&c->gb);
    FUNC5(&c->gb, opcode_size);

    dst = c->frame[c->current_frame];

    for (i = 0; i < c->height; i += 4, dst += c->width * 3)
        for (j = 0; j < c->width; j += 4, dst += 4) {
            int opcode, k = 0;
            if (op > opcode_size)
                return AVERROR_INVALIDDATA;
            if (j & 4) {
                opcode = opcodes[op] & 15;
                op++;
            } else {
                opcode = opcodes[op] >> 4;
            }

            while (block_sequences[opcode][k]) {
                offset = c->width * 2;
                code   = block_sequences[opcode][k++];

                switch (code) {
                case 2:
                    offset = 0;
                case 3:
                    color = FUNC1(&c->gb);
                case 4:
                    mask = FUNC1(&c->gb);
                    FUNC8(dst + offset, c->width, mask, color);
                    break;
                case 5:
                    offset = 0;
                case 6:
                    FUNC11(c, &src, &send);
                case 7:
                    if (src + offset + c->width + 4 > send)
                        return AVERROR_INVALIDDATA;
                    mask = FUNC1(&c->gb);
                    FUNC9(dst + offset, c->width, mask, src + offset);
                    break;
                }
            }
        }

    return 0;
}