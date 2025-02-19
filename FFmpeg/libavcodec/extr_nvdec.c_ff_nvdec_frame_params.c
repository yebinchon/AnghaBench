
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {int coded_width; int coded_height; int sw_pix_fmt; int codec_id; } ;
struct TYPE_12__ {int width; int height; int initial_pool_size; void* sw_format; int pool; int free; int format; } ;
struct TYPE_11__ {TYPE_1__* comp; } ;
struct TYPE_10__ {int depth; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AVBufferRef ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_PIX_FMT_CUDA ;
 void* AV_PIX_FMT_NV12 ;
 void* AV_PIX_FMT_P010 ;
 void* AV_PIX_FMT_P016 ;
 void* AV_PIX_FMT_YUV444P ;
 void* AV_PIX_FMT_YUV444P16 ;
 int EINVAL ;
 int ENOMEM ;
 int av_buffer_pool_init (int ,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;
 int cudaVideoChromaFormat_444 ;
 int map_avcodec_id (int ) ;
 int map_chroma_format (int ) ;
 int nvdec_alloc_dummy ;
 int nvdec_free_dummy ;

int ff_nvdec_frame_params(AVCodecContext *avctx,
                          AVBufferRef *hw_frames_ctx,
                          int dpb_size,
                          int supports_444)
{
    AVHWFramesContext *frames_ctx = (AVHWFramesContext*)hw_frames_ctx->data;
    const AVPixFmtDescriptor *sw_desc;
    int cuvid_codec_type, cuvid_chroma_format, chroma_444;

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
        av_log(avctx, AV_LOG_VERBOSE, "Unsupported chroma format\n");
        return AVERROR(EINVAL);
    }
    chroma_444 = supports_444 && cuvid_chroma_format == cudaVideoChromaFormat_444;

    frames_ctx->format = AV_PIX_FMT_CUDA;
    frames_ctx->width = (avctx->coded_width + 1) & ~1;
    frames_ctx->height = (avctx->coded_height + 1) & ~1;




    frames_ctx->initial_pool_size = dpb_size + 2;

    frames_ctx->free = nvdec_free_dummy;
    frames_ctx->pool = av_buffer_pool_init(0, nvdec_alloc_dummy);

    if (!frames_ctx->pool)
        return AVERROR(ENOMEM);

    switch (sw_desc->comp[0].depth) {
    case 8:
        frames_ctx->sw_format = chroma_444 ? AV_PIX_FMT_YUV444P : AV_PIX_FMT_NV12;
        break;
    case 10:
        frames_ctx->sw_format = chroma_444 ? AV_PIX_FMT_YUV444P16 : AV_PIX_FMT_P010;
        break;
    case 12:
        frames_ctx->sw_format = chroma_444 ? AV_PIX_FMT_YUV444P16 : AV_PIX_FMT_P016;
        break;
    default:
        return AVERROR(EINVAL);
    }

    return 0;
}
