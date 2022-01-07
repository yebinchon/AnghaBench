
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {scalar_t__ data_size; scalar_t__ src; TYPE_1__* slice; scalar_t__* slice_off; } ;
struct TYPE_7__ {int gb; } ;
typedef TYPE_2__ HQXContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ HQX_HEADER_SIZE ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__) ;
 int decode_slice (TYPE_2__*,int) ;
 int init_get_bits8 (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static int decode_slice_thread(AVCodecContext *avctx, void *arg,
                               int slice_no, int threadnr)
{
    HQXContext *ctx = avctx->priv_data;
    uint32_t *slice_off = ctx->slice_off;
    int ret;

    if (slice_off[slice_no] < HQX_HEADER_SIZE ||
        slice_off[slice_no] >= slice_off[slice_no + 1] ||
        slice_off[slice_no + 1] > ctx->data_size) {
        av_log(avctx, AV_LOG_ERROR, "Invalid slice size %d.\n", ctx->data_size);
        return AVERROR_INVALIDDATA;
    }

    ret = init_get_bits8(&ctx->slice[slice_no].gb,
                         ctx->src + slice_off[slice_no],
                         slice_off[slice_no + 1] - slice_off[slice_no]);
    if (ret < 0)
        return ret;

    return decode_slice(ctx, slice_no);
}
