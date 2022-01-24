#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_out_surf ;
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ encoder_flushing; int /*<<< orphan*/  unused_surface_queue; int /*<<< orphan*/  output_surface_ready_queue; int /*<<< orphan*/  nvencoder; int /*<<< orphan*/  d3d11_device; int /*<<< orphan*/  cu_context; } ;
typedef  int /*<<< orphan*/  NvencSurface ;
typedef  TYPE_1__ NvencContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(AVCodecContext *avctx, AVPacket *pkt)
{
    NvencSurface *tmp_out_surf;
    int res, res2;

    NvencContext *ctx = avctx->priv_data;

    if ((!ctx->cu_context && !ctx->d3d11_device) || !ctx->nvencoder)
        return FUNC0(EINVAL);

    if (FUNC5(avctx, ctx->encoder_flushing)) {
        FUNC1(ctx->output_surface_ready_queue, &tmp_out_surf, sizeof(tmp_out_surf), NULL);

        res = FUNC4(avctx);
        if (res < 0)
            return res;

        res = FUNC6(avctx, pkt, tmp_out_surf);

        res2 = FUNC3(avctx);
        if (res2 < 0)
            return res2;

        if (res)
            return res;

        FUNC2(ctx->unused_surface_queue, &tmp_out_surf, sizeof(tmp_out_surf), NULL);
    } else if (ctx->encoder_flushing) {
        return AVERROR_EOF;
    } else {
        return FUNC0(EAGAIN);
    }

    return 0;
}