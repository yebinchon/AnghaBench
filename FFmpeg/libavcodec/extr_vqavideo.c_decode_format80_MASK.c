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
struct TYPE_3__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ VqaContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char,int) ; 

__attribute__((used)) static int FUNC10(VqaContext *s, int src_size,
    unsigned char *dest, int dest_size, int check_size) {

    int dest_index = 0;
    int count, opcode, start;
    int src_pos;
    unsigned char color;
    int i;

    if (src_size < 0 || src_size > FUNC5(&s->gb)) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Chunk size %d is out of range\n",
               src_size);
        return AVERROR_INVALIDDATA;
    }

    start = FUNC7(&s->gb);
    while (FUNC7(&s->gb) - start < src_size) {
        opcode = FUNC4(&s->gb);
        FUNC8(s->avctx, "opcode %02X: ", opcode);

        /* 0x80 means that frame is finished */
        if (opcode == 0x80)
            break;

        if (dest_index >= dest_size) {
            FUNC2(s->avctx, AV_LOG_ERROR, "decode_format80 problem: dest_index (%d) exceeded dest_size (%d)\n",
                dest_index, dest_size);
            return AVERROR_INVALIDDATA;
        }

        if (opcode == 0xFF) {

            count   = FUNC6(&s->gb);
            src_pos = FUNC6(&s->gb);
            FUNC8(s->avctx, "(1) copy %X bytes from absolute pos %X\n", count, src_pos);
            FUNC1();
            FUNC0(src_pos);
            for (i = 0; i < count; i++)
                dest[dest_index + i] = dest[src_pos + i];
            dest_index += count;

        } else if (opcode == 0xFE) {

            count = FUNC6(&s->gb);
            color = FUNC4(&s->gb);
            FUNC8(s->avctx, "(2) set %X bytes to %02X\n", count, color);
            FUNC1();
            FUNC9(&dest[dest_index], color, count);
            dest_index += count;

        } else if ((opcode & 0xC0) == 0xC0) {

            count = (opcode & 0x3F) + 3;
            src_pos = FUNC6(&s->gb);
            FUNC8(s->avctx, "(3) copy %X bytes from absolute pos %X\n", count, src_pos);
            FUNC1();
            FUNC0(src_pos);
            for (i = 0; i < count; i++)
                dest[dest_index + i] = dest[src_pos + i];
            dest_index += count;

        } else if (opcode > 0x80) {

            count = opcode & 0x3F;
            FUNC8(s->avctx, "(4) copy %X bytes from source to dest\n", count);
            FUNC1();
            FUNC3(&s->gb, &dest[dest_index], count);
            dest_index += count;

        } else {

            count = ((opcode & 0x70) >> 4) + 3;
            src_pos = FUNC4(&s->gb) | ((opcode & 0x0F) << 8);
            FUNC8(s->avctx, "(5) copy %X bytes from relpos %X\n", count, src_pos);
            FUNC1();
            FUNC0(dest_index - src_pos);
            for (i = 0; i < count; i++)
                dest[dest_index + i] = dest[dest_index - src_pos + i];
            dest_index += count;
        }
    }

    /* validate that the entire destination buffer was filled; this is
     * important for decoding frame maps since each vector needs to have a
     * codebook entry; it is not important for compressed codebooks because
     * not every entry needs to be filled */
    if (check_size)
        if (dest_index < dest_size) {
            FUNC2(s->avctx, AV_LOG_ERROR, "decode_format80 problem: decode finished with dest_index (%d) < dest_size (%d)\n",
                dest_index, dest_size);
            FUNC9(dest + dest_index, 0, dest_size - dest_index);
        }

    return 0; // let's display what we decoded anyway
}