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
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tex_size; scalar_t__ tex_data; int /*<<< orphan*/  gbc; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ DXVContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;
    GetByteContext *gbc = &ctx->gbc;
    uint32_t value, prev, op;
    int idx = 0, state = 0;
    int pos = 2;

    /* Copy the first two elements */
    FUNC1(ctx->tex_data, FUNC3(gbc));
    FUNC1(ctx->tex_data + 4, FUNC3(gbc));

    /* Process input until the whole texture has been filled */
    while (pos + 2 <= ctx->tex_size / 4) {
        FUNC2(2);

        /* Copy two elements from a previous offset or from the input buffer */
        if (op) {
            prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;

            prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;
        } else {
            FUNC2(2);

            if (op)
                prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            else
                prev = FUNC3(gbc);
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;

            FUNC2(2);

            if (op)
                prev = FUNC0(ctx->tex_data + 4 * (pos - idx));
            else
                prev = FUNC3(gbc);
            FUNC1(ctx->tex_data + 4 * pos, prev);
            pos++;
        }
    }

    return 0;
}