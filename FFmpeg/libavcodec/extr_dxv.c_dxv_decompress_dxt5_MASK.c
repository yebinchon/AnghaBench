#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tex_size; scalar_t__ tex_data; int /*<<< orphan*/  gbc; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ DXVContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;
    GetByteContext *gbc = &ctx->gbc;
    uint32_t value, op;
    int idx, prev, state = 0;
    int pos = 4;
    int run = 0;
    int probe, check;

    /* Copy the first four elements */
    FUNC1(ctx->tex_data +  0, FUNC6(gbc));
    FUNC1(ctx->tex_data +  4, FUNC6(gbc));
    FUNC1(ctx->tex_data +  8, FUNC6(gbc));
    FUNC1(ctx->tex_data + 12, FUNC6(gbc));

    /* Process input until the whole texture has been filled */
    while (pos + 2 <= ctx->tex_size / 4) {
        if (run) {
            run--;

            prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;
            prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;
        } else {
            if (FUNC4(gbc) < 1)
                return AVERROR_INVALIDDATA;
            if (state == 0) {
                value = FUNC6(gbc);
                state = 16;
            }
            op = value & 0x3;
            value >>= 2;
            state--;

            switch (op) {
            case 0:
                /* Long copy */
                check = FUNC3(gbc) + 1;
                if (check == 256) {
                    do {
                        probe = FUNC5(gbc);
                        check += probe;
                    } while (probe == 0xFFFF);
                }
                while (check && pos + 4 <= ctx->tex_size / 4) {
                    prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
                    FUNC1(ctx->tex_data + 4 * pos, prev);
                    pos++;

                    prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
                    FUNC1(ctx->tex_data + 4 * pos, prev);
                    pos++;

                    prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
                    FUNC1(ctx->tex_data + 4 * pos, prev);
                    pos++;

                    prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
                    FUNC1(ctx->tex_data + 4 * pos, prev);
                    pos++;

                    check--;
                }

                /* Restart (or exit) the loop */
                continue;
                break;
            case 1:
                /* Load new run value */
                run = FUNC3(gbc);
                if (run == 255) {
                    do {
                        probe = FUNC5(gbc);
                        run += probe;
                    } while (probe == 0xFFFF);
                }

                /* Copy two dwords from previous data */
                prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
                FUNC1(ctx->tex_data + 4 * pos, prev);
                pos++;

                prev = FUNC0(ctx->tex_data + 4 * (pos - 4));
                FUNC1(ctx->tex_data + 4 * pos, prev);
                pos++;
                break;
            case 2:
                /* Copy two dwords from a previous index */
                idx = 8 + FUNC5(gbc);
                if (idx > pos || (unsigned int)(pos - idx) + 2 > ctx->tex_size / 4)
                    return AVERROR_INVALIDDATA;
                prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
                FUNC1(ctx->tex_data + 4 * pos, prev);
                pos++;

                prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
                FUNC1(ctx->tex_data + 4 * pos, prev);
                pos++;
                break;
            case 3:
                /* Copy two dwords from input */
                prev = FUNC6(gbc);
                FUNC1(ctx->tex_data + 4 * pos, prev);
                pos++;

                prev = FUNC6(gbc);
                FUNC1(ctx->tex_data + 4 * pos, prev);
                pos++;
                break;
            }
        }

        FUNC2(4);
        if (pos + 2 > ctx->tex_size / 4)
            return AVERROR_INVALIDDATA;

        /* Copy two elements from a previous offset or from the input buffer */
        if (op) {
            if (idx > pos || (unsigned int)(pos - idx) + 2 > ctx->tex_size / 4)
                return AVERROR_INVALIDDATA;
            prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;

            prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;
        } else {
            FUNC2(4);

            if (op && (idx > pos || (unsigned int)(pos - idx) + 2 > ctx->tex_size / 4))
                return AVERROR_INVALIDDATA;
            if (op)
                prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            else
                prev = FUNC6(gbc);
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;

            FUNC2(4);

            if (op)
                prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            else
                prev = FUNC6(gbc);
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;
        }
    }

    return 0;
}