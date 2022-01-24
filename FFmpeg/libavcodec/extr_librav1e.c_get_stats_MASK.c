#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int pass_pos; int /*<<< orphan*/ * pass_data; int /*<<< orphan*/  pass_size; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ librav1eContext ;
struct TYPE_9__ {int /*<<< orphan*/  stats_out; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ RaData ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, int eos)
{
    librav1eContext *ctx = avctx->priv_data;
    RaData* buf = FUNC8(ctx->ctx);
    if (!buf)
        return 0;

    if (!eos) {
        uint8_t *tmp = FUNC3(ctx->pass_data, &ctx->pass_size,
                                      ctx->pass_pos + buf->len);
        if (!tmp) {
            FUNC7(buf);
            return FUNC0(ENOMEM);
        }

        ctx->pass_data = tmp;
        FUNC6(ctx->pass_data + ctx->pass_pos, buf->data, buf->len);
        ctx->pass_pos += buf->len;
    } else {
        size_t b64_size = FUNC1(ctx->pass_pos);

        FUNC6(ctx->pass_data, buf->data, buf->len);

        avctx->stats_out = FUNC5(b64_size);
        if (!avctx->stats_out) {
            FUNC7(buf);
            return FUNC0(ENOMEM);
        }

        FUNC2(avctx->stats_out, b64_size, ctx->pass_data, ctx->pass_pos);

        FUNC4(&ctx->pass_data);
    }

    FUNC7(buf);

    return 0;
}