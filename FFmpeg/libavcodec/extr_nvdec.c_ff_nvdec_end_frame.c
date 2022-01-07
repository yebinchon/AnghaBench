
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* internal; } ;
struct TYPE_17__ {int pSliceDataOffsets; int nNumSlices; int pBitstreamData; int nBitstreamDataLen; } ;
struct TYPE_16__ {TYPE_7__ pic_params; int slice_offsets; int nb_slices; int bitstream; int bitstream_len; TYPE_2__* decoder_ref; } ;
struct TYPE_15__ {TYPE_4__* cudl; int decoder; TYPE_3__* cvdl; int cuda_ctx; } ;
struct TYPE_14__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_13__ {int (* cuvidDecodePicture ) (int ,TYPE_7__*) ;} ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_6__* hwaccel_priv_data; } ;
typedef TYPE_5__ NVDECDecoder ;
typedef TYPE_6__ NVDECContext ;
typedef int CUcontext ;
typedef TYPE_7__ CUVIDPICPARAMS ;
typedef TYPE_8__ AVCodecContext ;


 int CHECK_CU (int ) ;
 int stub1 (int ) ;
 int stub2 (int ,TYPE_7__*) ;
 int stub3 (int *) ;

int ff_nvdec_end_frame(AVCodecContext *avctx)
{
    NVDECContext *ctx = avctx->internal->hwaccel_priv_data;
    NVDECDecoder *decoder = (NVDECDecoder*)ctx->decoder_ref->data;
    void *logctx = avctx;
    CUVIDPICPARAMS *pp = &ctx->pic_params;

    CUcontext dummy;

    int ret = 0;

    pp->nBitstreamDataLen = ctx->bitstream_len;
    pp->pBitstreamData = ctx->bitstream;
    pp->nNumSlices = ctx->nb_slices;
    pp->pSliceDataOffsets = ctx->slice_offsets;

    ret = CHECK_CU(decoder->cudl->cuCtxPushCurrent(decoder->cuda_ctx));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(decoder->cvdl->cuvidDecodePicture(decoder->decoder, &ctx->pic_params));
    if (ret < 0)
        goto finish;

finish:
    CHECK_CU(decoder->cudl->cuCtxPopCurrent(&dummy));

    return ret;
}
