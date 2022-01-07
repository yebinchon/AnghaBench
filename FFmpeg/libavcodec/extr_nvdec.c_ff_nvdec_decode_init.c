
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int cudaVideoSurfaceFormat ;
struct TYPE_27__ {int thread_count; int coded_height; int coded_width; TYPE_2__* hw_frames_ctx; int sw_pix_fmt; int codec_id; TYPE_1__* internal; } ;
struct TYPE_26__ {int initial_pool_size; int device_ref; } ;
struct TYPE_25__ {TYPE_3__* comp; } ;
struct TYPE_24__ {int bitDepthMinus8; int CodecType; int ChromaFormat; int ulNumDecodeSurfaces; int ulNumOutputSurfaces; int OutputFormat; int ulTargetHeight; int ulTargetWidth; int ulHeight; int ulWidth; int member_0; } ;
struct TYPE_23__ {int decoder_pool; int decoder_ref; scalar_t__ supports_444; } ;
struct TYPE_22__ {int dpb_size; } ;
struct TYPE_21__ {int depth; } ;
struct TYPE_20__ {scalar_t__ data; } ;
struct TYPE_19__ {TYPE_5__* hwaccel_priv_data; } ;
typedef TYPE_4__ NVDECFramePool ;
typedef TYPE_5__ NVDECContext ;
typedef TYPE_6__ CUVIDDECODECREATEINFO ;
typedef TYPE_7__ AVPixFmtDescriptor ;
typedef TYPE_8__ AVHWFramesContext ;
typedef TYPE_9__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int AV_HWDEVICE_TYPE_CUDA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int ENOSYS ;
 int av_buffer_pool_init2 (int,TYPE_4__*,int ,int ) ;
 int av_free ;
 int av_log (TYPE_9__*,int ,char*,...) ;
 TYPE_4__* av_mallocz (int) ;
 TYPE_7__* av_pix_fmt_desc_get (int ) ;
 int cudaVideoChromaFormat_444 ;
 int cudaVideoSurfaceFormat_NV12 ;
 int cudaVideoSurfaceFormat_P016 ;
 int cudaVideoSurfaceFormat_YUV444 ;
 int cudaVideoSurfaceFormat_YUV444_16Bit ;
 int ff_decode_get_hw_frames_ctx (TYPE_9__*,int ) ;
 int ff_nvdec_decode_uninit (TYPE_9__*) ;
 int map_avcodec_id (int ) ;
 int map_chroma_format (int ) ;
 int nvdec_decoder_create (int *,int ,TYPE_6__*,TYPE_9__*) ;
 int nvdec_decoder_frame_alloc ;

int ff_nvdec_decode_init(AVCodecContext *avctx)
{
    NVDECContext *ctx = avctx->internal->hwaccel_priv_data;

    NVDECFramePool *pool;
    AVHWFramesContext *frames_ctx;
    const AVPixFmtDescriptor *sw_desc;

    CUVIDDECODECREATEINFO params = { 0 };

    cudaVideoSurfaceFormat output_format;
    int cuvid_codec_type, cuvid_chroma_format, chroma_444;
    int ret = 0;

    sw_desc = av_pix_fmt_desc_get(avctx->sw_pix_fmt);
    if (!sw_desc)
        return AVERROR_BUG;

    cuvid_codec_type = map_avcodec_id(avctx->codec_id);
    if (cuvid_codec_type < 0) {
        av_log(avctx, AV_LOG_ERROR, "Unsupported codec ID\n");
        return AVERROR_BUG;
    }

    cuvid_chroma_format = map_chroma_format(avctx->sw_pix_fmt);
    if (cuvid_chroma_format < 0) {
        av_log(avctx, AV_LOG_ERROR, "Unsupported chroma format\n");
        return AVERROR(ENOSYS);
    }
    chroma_444 = ctx->supports_444 && cuvid_chroma_format == cudaVideoChromaFormat_444;

    if (!avctx->hw_frames_ctx) {
        ret = ff_decode_get_hw_frames_ctx(avctx, AV_HWDEVICE_TYPE_CUDA);
        if (ret < 0)
            return ret;
    }

    switch (sw_desc->comp[0].depth) {
    case 8:
        output_format = chroma_444 ? cudaVideoSurfaceFormat_YUV444 :
                                     cudaVideoSurfaceFormat_NV12;
        break;
    case 10:
    case 12:
        output_format = chroma_444 ? cudaVideoSurfaceFormat_YUV444_16Bit :
                                     cudaVideoSurfaceFormat_P016;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Unsupported bit depth\n");
        return AVERROR(ENOSYS);
    }

    frames_ctx = (AVHWFramesContext*)avctx->hw_frames_ctx->data;

    params.ulWidth = avctx->coded_width;
    params.ulHeight = avctx->coded_height;
    params.ulTargetWidth = avctx->coded_width;
    params.ulTargetHeight = avctx->coded_height;
    params.bitDepthMinus8 = sw_desc->comp[0].depth - 8;
    params.OutputFormat = output_format;
    params.CodecType = cuvid_codec_type;
    params.ChromaFormat = cuvid_chroma_format;
    params.ulNumDecodeSurfaces = frames_ctx->initial_pool_size;
    params.ulNumOutputSurfaces = frames_ctx->initial_pool_size;

    ret = nvdec_decoder_create(&ctx->decoder_ref, frames_ctx->device_ref, &params, avctx);
    if (ret < 0) {
        if (params.ulNumDecodeSurfaces > 32) {
            av_log(avctx, AV_LOG_WARNING, "Using more than 32 (%d) decode surfaces might cause nvdec to fail.\n",
                   (int)params.ulNumDecodeSurfaces);
            av_log(avctx, AV_LOG_WARNING, "Try lowering the amount of threads. Using %d right now.\n",
                   avctx->thread_count);
        }
        return ret;
    }

    pool = av_mallocz(sizeof(*pool));
    if (!pool) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    pool->dpb_size = frames_ctx->initial_pool_size;

    ctx->decoder_pool = av_buffer_pool_init2(sizeof(int), pool,
                                             nvdec_decoder_frame_alloc, av_free);
    if (!ctx->decoder_pool) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    return 0;
fail:
    ff_nvdec_decode_uninit(avctx);
    return ret;
}
