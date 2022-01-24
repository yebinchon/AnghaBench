#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_8__ {int* linesize; scalar_t__* data; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {int /*<<< orphan*/  gb; TYPE_3__* avctx; TYPE_4__* frame; } ;
typedef  TYPE_1__ RpzaContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(RpzaContext *s)
{
    int width = s->avctx->width;
    int stride, row_inc, ret;
    int chunk_size;
    uint16_t colorA = 0, colorB;
    uint16_t color4[4];
    uint16_t ta, tb;
    uint16_t *pixels;

    int row_ptr = 0;
    int pixel_ptr = 0;
    int block_ptr;
    int pixel_x, pixel_y;
    int total_blocks;

    /* First byte is always 0xe1. Warn if it's different */
    if (FUNC10(&s->gb) != 0xe1)
        FUNC3(s->avctx, AV_LOG_ERROR, "First chunk byte is 0x%02x instead of 0xe1\n",
               FUNC10(&s->gb));

    /* Get chunk size, ignoring first byte */
    chunk_size = FUNC6(&s->gb) & 0x00FFFFFF;

    /* If length mismatch use size from MOV file and try to decode anyway */
    if (chunk_size != FUNC8(&s->gb) + 4)
        FUNC3(s->avctx, AV_LOG_WARNING,
               "MOV chunk size %d != encoded chunk size %d\n",
               chunk_size,
               FUNC8(&s->gb) + 4
              );

    /* Number of 4x4 blocks in frame. */
    total_blocks = ((s->avctx->width + 3) / 4) * ((s->avctx->height + 3) / 4);

    if (total_blocks / 32 > FUNC8(&s->gb))
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC11(s->avctx, s->frame, 0)) < 0)
        return ret;
    pixels = (uint16_t *)s->frame->data[0];
    stride = s->frame->linesize[0] / 2;
    row_inc = stride - 4;

    /* Process chunk data */
    while (FUNC8(&s->gb)) {
        uint8_t opcode = FUNC7(&s->gb); /* Get opcode */

        int n_blocks = (opcode & 0x1f) + 1; /* Extract block counter from opcode */

        /* If opcode MSbit is 0, we need more data to decide what to do */
        if ((opcode & 0x80) == 0) {
            colorA = (opcode << 8) | FUNC7(&s->gb);
            opcode = 0;
            if ((FUNC10(&s->gb) & 0x80) != 0) {
                /* Must behave as opcode 110xxxxx, using colorA computed
                 * above. Use fake opcode 0x20 to enter switch block at
                 * the right place */
                opcode = 0x20;
                n_blocks = 1;
            }
        }

        n_blocks = FUNC2(n_blocks, total_blocks);

        switch (opcode & 0xe0) {

        /* Skip blocks */
        case 0x80:
            while (n_blocks--) {
                FUNC1();
                FUNC0();
            }
            break;

        /* Fill blocks with one color */
        case 0xa0:
            colorA = FUNC4(&s->gb);
            while (n_blocks--) {
                FUNC1();
                block_ptr = row_ptr + pixel_ptr;
                for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                    for (pixel_x = 0; pixel_x < 4; pixel_x++){
                        pixels[block_ptr] = colorA;
                        block_ptr++;
                    }
                    block_ptr += row_inc;
                }
                FUNC0();
            }
            break;

        /* Fill blocks with 4 colors */
        case 0xc0:
            colorA = FUNC4(&s->gb);
        case 0x20:
            colorB = FUNC4(&s->gb);

            /* sort out the colors */
            color4[0] = colorB;
            color4[1] = 0;
            color4[2] = 0;
            color4[3] = colorA;

            /* red components */
            ta = (colorA >> 10) & 0x1F;
            tb = (colorB >> 10) & 0x1F;
            color4[1] |= ((11 * ta + 21 * tb) >> 5) << 10;
            color4[2] |= ((21 * ta + 11 * tb) >> 5) << 10;

            /* green components */
            ta = (colorA >> 5) & 0x1F;
            tb = (colorB >> 5) & 0x1F;
            color4[1] |= ((11 * ta + 21 * tb) >> 5) << 5;
            color4[2] |= ((21 * ta + 11 * tb) >> 5) << 5;

            /* blue components */
            ta = colorA & 0x1F;
            tb = colorB & 0x1F;
            color4[1] |= ((11 * ta + 21 * tb) >> 5);
            color4[2] |= ((21 * ta + 11 * tb) >> 5);

            if (FUNC8(&s->gb) < n_blocks * 4)
                return AVERROR_INVALIDDATA;
            while (n_blocks--) {
                FUNC1();
                block_ptr = row_ptr + pixel_ptr;
                for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                    uint8_t index = FUNC9(&s->gb);
                    for (pixel_x = 0; pixel_x < 4; pixel_x++){
                        uint8_t idx = (index >> (2 * (3 - pixel_x))) & 0x03;
                        pixels[block_ptr] = color4[idx];
                        block_ptr++;
                    }
                    block_ptr += row_inc;
                }
                FUNC0();
            }
            break;

        /* Fill block with 16 colors */
        case 0x00:
            if (FUNC8(&s->gb) < 30)
                return AVERROR_INVALIDDATA;
            FUNC1();
            block_ptr = row_ptr + pixel_ptr;
            for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                for (pixel_x = 0; pixel_x < 4; pixel_x++){
                    /* We already have color of upper left pixel */
                    if ((pixel_y != 0) || (pixel_x != 0))
                        colorA = FUNC5(&s->gb);
                    pixels[block_ptr] = colorA;
                    block_ptr++;
                }
                block_ptr += row_inc;
            }
            FUNC0();
            break;

        /* Unknown opcode */
        default:
            FUNC3(s->avctx, AV_LOG_ERROR, "Unknown opcode %d in rpza chunk."
                 " Skip remaining %d bytes of chunk data.\n", opcode,
                 FUNC8(&s->gb));
            return AVERROR_INVALIDDATA;
        } /* Opcode switch */
    }

    return 0;
}