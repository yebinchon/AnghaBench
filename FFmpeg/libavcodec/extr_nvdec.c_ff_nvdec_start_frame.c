
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_21__ {TYPE_1__* internal; } ;
struct TYPE_20__ {TYPE_2__* private_ref; } ;
struct TYPE_19__ {int post_process; int (* hwaccel_priv_free ) (TYPE_3__*) ;TYPE_3__* hwaccel_priv; } ;
struct TYPE_18__ {int decoder_pool; int decoder_ref; scalar_t__ nb_slices; scalar_t__ bitstream_len; } ;
struct TYPE_17__ {unsigned int idx; TYPE_13__* idx_ref; int decoder_ref; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {TYPE_4__* hwaccel_priv_data; } ;
struct TYPE_14__ {scalar_t__ data; } ;
typedef TYPE_3__ NVDECFrame ;
typedef TYPE_4__ NVDECContext ;
typedef TYPE_5__ FrameDecodeData ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 TYPE_13__* av_buffer_pool_get (int ) ;
 int av_buffer_ref (int ) ;
 int av_log (TYPE_7__*,int ,char*) ;
 TYPE_3__* av_mallocz (int) ;
 int nvdec_fdd_priv_free (TYPE_3__*) ;
 int nvdec_retrieve_data ;

int ff_nvdec_start_frame(AVCodecContext *avctx, AVFrame *frame)
{
    NVDECContext *ctx = avctx->internal->hwaccel_priv_data;
    FrameDecodeData *fdd = (FrameDecodeData*)frame->private_ref->data;
    NVDECFrame *cf = ((void*)0);
    int ret;

    ctx->bitstream_len = 0;
    ctx->nb_slices = 0;

    if (fdd->hwaccel_priv)
        return 0;

    cf = av_mallocz(sizeof(*cf));
    if (!cf)
        return AVERROR(ENOMEM);

    cf->decoder_ref = av_buffer_ref(ctx->decoder_ref);
    if (!cf->decoder_ref) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    cf->idx_ref = av_buffer_pool_get(ctx->decoder_pool);
    if (!cf->idx_ref) {
        av_log(avctx, AV_LOG_ERROR, "No decoder surfaces left\n");
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    cf->idx = *(unsigned int*)cf->idx_ref->data;

    fdd->hwaccel_priv = cf;
    fdd->hwaccel_priv_free = nvdec_fdd_priv_free;
    fdd->post_process = nvdec_retrieve_data;

    return 0;
fail:
    nvdec_fdd_priv_free(cf);
    return ret;

}
