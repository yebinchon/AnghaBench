
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_6__ {int* slice_offsets; int nb_slices; int bitstream_len; int const* bitstream; int slice_offsets_allocated; } ;
struct TYPE_5__ {TYPE_2__* hwaccel_priv_data; } ;
typedef TYPE_2__ NVDECContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 void* av_fast_realloc (int*,int *,int) ;

int ff_nvdec_simple_decode_slice(AVCodecContext *avctx, const uint8_t *buffer,
                                 uint32_t size)
{
    NVDECContext *ctx = avctx->internal->hwaccel_priv_data;
    void *tmp;

    tmp = av_fast_realloc(ctx->slice_offsets, &ctx->slice_offsets_allocated,
                          (ctx->nb_slices + 1) * sizeof(*ctx->slice_offsets));
    if (!tmp)
        return AVERROR(ENOMEM);
    ctx->slice_offsets = tmp;

    if (!ctx->bitstream)
        ctx->bitstream = (uint8_t*)buffer;

    ctx->slice_offsets[ctx->nb_slices] = buffer - ctx->bitstream;
    ctx->bitstream_len += size;
    ctx->nb_slices++;

    return 0;
}
