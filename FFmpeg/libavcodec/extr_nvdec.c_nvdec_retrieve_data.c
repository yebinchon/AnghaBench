
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_26__ {int sw_format; } ;
struct TYPE_25__ {int progressive_frame; int output_stream; int member_0; } ;
struct TYPE_24__ {scalar_t__ hwaccel_priv; } ;
struct TYPE_23__ {TYPE_4__* cudl; int decoder; TYPE_3__* cvdl; int cuda_ctx; int stream; } ;
struct TYPE_22__ {TYPE_15__* decoder_ref; TYPE_15__* idx_ref; int idx; } ;
struct TYPE_21__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_20__ {int (* cuvidUnmapVideoFrame ) (int ,scalar_t__) ;int (* cuvidMapVideoFrame ) (int ,int ,scalar_t__*,unsigned int*,TYPE_8__*) ;} ;
struct TYPE_19__ {scalar_t__ data; } ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_17__ {scalar_t__ data; } ;
struct TYPE_16__ {int* linesize; int height; int * buf; int ** data; TYPE_2__* hw_frames_ctx; TYPE_1__* private_ref; } ;
typedef TYPE_5__ NVDECFrame ;
typedef TYPE_6__ NVDECDecoder ;
typedef TYPE_7__ FrameDecodeData ;
typedef scalar_t__ CUdeviceptr ;
typedef int CUcontext ;
typedef TYPE_8__ CUVIDPROCPARAMS ;
typedef TYPE_9__ AVHWFramesContext ;
typedef TYPE_10__ AVFrame ;


 int AVERROR (int ) ;
 int AV_BUFFER_FLAG_READONLY ;
 int CHECK_CU (int ) ;
 int ENOMEM ;
 int av_buffer_create (int *,int,int ,void*,int ) ;
 void* av_buffer_ref (TYPE_15__*) ;
 int av_buffer_unref (int *) ;
 int av_freep (TYPE_5__**) ;
 TYPE_5__* av_mallocz (int) ;
 int av_pix_fmt_get_chroma_sub_sample (int ,int*,int*) ;
 int nvdec_unmap_mapped_frame ;
 int stub1 (int ) ;
 int stub2 (int ,int ,scalar_t__*,unsigned int*,TYPE_8__*) ;
 int stub3 (int ,scalar_t__) ;
 int stub4 (int *) ;

__attribute__((used)) static int nvdec_retrieve_data(void *logctx, AVFrame *frame)
{
    FrameDecodeData *fdd = (FrameDecodeData*)frame->private_ref->data;
    NVDECFrame *cf = (NVDECFrame*)fdd->hwaccel_priv;
    NVDECDecoder *decoder = (NVDECDecoder*)cf->decoder_ref->data;

    AVHWFramesContext *hwctx = (AVHWFramesContext *)frame->hw_frames_ctx->data;

    CUVIDPROCPARAMS vpp = { 0 };
    NVDECFrame *unmap_data = ((void*)0);

    CUcontext dummy;
    CUdeviceptr devptr;

    unsigned int pitch, i;
    unsigned int offset = 0;
    int shift_h = 0, shift_v = 0;
    int ret = 0;

    vpp.progressive_frame = 1;
    vpp.output_stream = decoder->stream;

    ret = CHECK_CU(decoder->cudl->cuCtxPushCurrent(decoder->cuda_ctx));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(decoder->cvdl->cuvidMapVideoFrame(decoder->decoder,
                                                     cf->idx, &devptr,
                                                     &pitch, &vpp));
    if (ret < 0)
        goto finish;

    unmap_data = av_mallocz(sizeof(*unmap_data));
    if (!unmap_data) {
        ret = AVERROR(ENOMEM);
        goto copy_fail;
    }

    frame->buf[1] = av_buffer_create((uint8_t *)unmap_data, sizeof(*unmap_data),
                                     nvdec_unmap_mapped_frame, (void*)devptr,
                                     AV_BUFFER_FLAG_READONLY);
    if (!frame->buf[1]) {
        ret = AVERROR(ENOMEM);
        goto copy_fail;
    }

    unmap_data->idx = cf->idx;
    unmap_data->idx_ref = av_buffer_ref(cf->idx_ref);
    unmap_data->decoder_ref = av_buffer_ref(cf->decoder_ref);

    av_pix_fmt_get_chroma_sub_sample(hwctx->sw_format, &shift_h, &shift_v);
    for (i = 0; frame->linesize[i]; i++) {
        frame->data[i] = (uint8_t*)(devptr + offset);
        frame->linesize[i] = pitch;
        offset += pitch * (frame->height >> (i ? shift_v : 0));
    }

    goto finish;

copy_fail:
    if (!frame->buf[1]) {
        CHECK_CU(decoder->cvdl->cuvidUnmapVideoFrame(decoder->decoder, devptr));
        av_freep(&unmap_data);
    } else {
        av_buffer_unref(&frame->buf[1]);
    }

finish:
    CHECK_CU(decoder->cudl->cuCtxPopCurrent(&dummy));
    return ret;
}
