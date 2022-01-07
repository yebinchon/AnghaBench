
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_20__ {int BitDepthLuma; int BitDepthChroma; int Shift; int AspectRatioW; int AspectRatioH; int FrameRateExtD; int FrameRateExtN; int CropH; int CropW; int ChromaFormat; int FourCC; int PicStruct; void* Height; void* Width; scalar_t__ CropY; scalar_t__ CropX; } ;
typedef TYPE_6__ mfxFrameInfo ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_23__ {TYPE_7__* hwctx; } ;
struct TYPE_22__ {scalar_t__ log2_chroma_w; scalar_t__ log2_chroma_h; TYPE_3__* comp; } ;
struct TYPE_21__ {TYPE_2__* surfaces; } ;
struct TYPE_19__ {int num; int den; } ;
struct TYPE_18__ {int den; int num; } ;
struct TYPE_17__ {int depth; } ;
struct TYPE_16__ {TYPE_6__ Info; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {scalar_t__ format; TYPE_5__ sample_aspect_ratio; TYPE_4__ frame_rate; int h; int w; TYPE_1__* hw_frames_ctx; } ;
typedef TYPE_7__ AVQSVFramesContext ;
typedef TYPE_8__ AVPixFmtDescriptor ;
typedef TYPE_9__ AVHWFramesContext ;
typedef TYPE_10__ AVFilterLink ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 scalar_t__ AV_PIX_FMT_QSV ;
 int EINVAL ;
 void* FFALIGN (int ,int) ;
 int MFX_CHROMAFORMAT_YUV420 ;
 int MFX_CHROMAFORMAT_YUV422 ;
 int MFX_CHROMAFORMAT_YUV444 ;
 int MFX_PICSTRUCT_PROGRESSIVE ;
 TYPE_8__* av_pix_fmt_desc_get (int) ;
 int pix_fmt_to_mfx_fourcc (int) ;

__attribute__((used)) static int fill_frameinfo_by_link(mfxFrameInfo *frameinfo, AVFilterLink *link)
{
    enum AVPixelFormat pix_fmt;
    AVHWFramesContext *frames_ctx;
    AVQSVFramesContext *frames_hwctx;
    const AVPixFmtDescriptor *desc;

    if (link->format == AV_PIX_FMT_QSV) {
        if (!link->hw_frames_ctx)
            return AVERROR(EINVAL);

        frames_ctx = (AVHWFramesContext *)link->hw_frames_ctx->data;
        frames_hwctx = frames_ctx->hwctx;
        *frameinfo = frames_hwctx->surfaces[0].Info;
    } else {
        pix_fmt = link->format;
        desc = av_pix_fmt_desc_get(pix_fmt);
        if (!desc)
            return AVERROR_BUG;

        frameinfo->CropX = 0;
        frameinfo->CropY = 0;
        frameinfo->Width = FFALIGN(link->w, 32);
        frameinfo->Height = FFALIGN(link->h, 32);
        frameinfo->PicStruct = MFX_PICSTRUCT_PROGRESSIVE;
        frameinfo->FourCC = pix_fmt_to_mfx_fourcc(pix_fmt);
        frameinfo->BitDepthLuma = desc->comp[0].depth;
        frameinfo->BitDepthChroma = desc->comp[0].depth;
        frameinfo->Shift = desc->comp[0].depth > 8;
        if (desc->log2_chroma_w && desc->log2_chroma_h)
            frameinfo->ChromaFormat = MFX_CHROMAFORMAT_YUV420;
        else if (desc->log2_chroma_w)
            frameinfo->ChromaFormat = MFX_CHROMAFORMAT_YUV422;
        else
            frameinfo->ChromaFormat = MFX_CHROMAFORMAT_YUV444;
    }

    frameinfo->CropW = link->w;
    frameinfo->CropH = link->h;
    frameinfo->FrameRateExtN = link->frame_rate.num;
    frameinfo->FrameRateExtD = link->frame_rate.den;
    frameinfo->AspectRatioW = link->sample_aspect_ratio.num ? link->sample_aspect_ratio.num : 1;
    frameinfo->AspectRatioH = link->sample_aspect_ratio.den ? link->sample_aspect_ratio.den : 1;

    return 0;
}
