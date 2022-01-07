
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp_out_surf ;
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ encoder_flushing; int unused_surface_queue; int output_surface_ready_queue; int nvencoder; int d3d11_device; int cu_context; } ;
typedef int NvencSurface ;
typedef TYPE_1__ NvencContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int EINVAL ;
 int av_fifo_generic_read (int ,int **,int,int *) ;
 int av_fifo_generic_write (int ,int **,int,int *) ;
 int nvenc_pop_context (TYPE_2__*) ;
 int nvenc_push_context (TYPE_2__*) ;
 scalar_t__ output_ready (TYPE_2__*,scalar_t__) ;
 int process_output_surface (TYPE_2__*,int *,int *) ;

int ff_nvenc_receive_packet(AVCodecContext *avctx, AVPacket *pkt)
{
    NvencSurface *tmp_out_surf;
    int res, res2;

    NvencContext *ctx = avctx->priv_data;

    if ((!ctx->cu_context && !ctx->d3d11_device) || !ctx->nvencoder)
        return AVERROR(EINVAL);

    if (output_ready(avctx, ctx->encoder_flushing)) {
        av_fifo_generic_read(ctx->output_surface_ready_queue, &tmp_out_surf, sizeof(tmp_out_surf), ((void*)0));

        res = nvenc_push_context(avctx);
        if (res < 0)
            return res;

        res = process_output_surface(avctx, pkt, tmp_out_surf);

        res2 = nvenc_pop_context(avctx);
        if (res2 < 0)
            return res2;

        if (res)
            return res;

        av_fifo_generic_write(ctx->unused_surface_queue, &tmp_out_surf, sizeof(tmp_out_surf), ((void*)0));
    } else if (ctx->encoder_flushing) {
        return AVERROR_EOF;
    } else {
        return AVERROR(EAGAIN);
    }

    return 0;
}
