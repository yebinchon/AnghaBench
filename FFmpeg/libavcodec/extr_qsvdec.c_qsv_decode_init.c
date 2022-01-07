
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int FourCC; int PicStruct; int Height; int Width; int CropH; int CropW; } ;
struct TYPE_12__ {TYPE_1__ FrameInfo; int CodecProfile; int CodecLevel; } ;
struct TYPE_13__ {TYPE_2__ mfx; } ;
typedef TYPE_3__ mfxVideoParam ;
struct TYPE_15__ {int height; int width; int pix_fmt; int hw_frames_ctx; int field_order; int profile; int level; int coded_height; int coded_width; } ;
struct TYPE_14__ {int pool; TYPE_1__ frame_info; int session; } ;
typedef TYPE_4__ QSVContext ;
typedef TYPE_5__ AVCodecContext ;


 int FFALIGN (int ,int) ;
 int MFXVideoDECODE_Init (int ,TYPE_3__*) ;
 int av_buffer_allocz ;
 int av_buffer_pool_init (int ,int ) ;
 int av_image_get_buffer_size (int ,int ,int ,int) ;
 int ff_qsv_map_fourcc (int ) ;
 int ff_qsv_map_picstruct (int ) ;
 int ff_qsv_print_error (TYPE_5__*,int,char*) ;

__attribute__((used)) static int qsv_decode_init(AVCodecContext *avctx, QSVContext *q, mfxVideoParam *param)
{
    int ret;

    avctx->width = param->mfx.FrameInfo.CropW;
    avctx->height = param->mfx.FrameInfo.CropH;
    avctx->coded_width = param->mfx.FrameInfo.Width;
    avctx->coded_height = param->mfx.FrameInfo.Height;
    avctx->level = param->mfx.CodecLevel;
    avctx->profile = param->mfx.CodecProfile;
    avctx->field_order = ff_qsv_map_picstruct(param->mfx.FrameInfo.PicStruct);
    avctx->pix_fmt = ff_qsv_map_fourcc(param->mfx.FrameInfo.FourCC);

    ret = MFXVideoDECODE_Init(q->session, param);
    if (ret < 0)
        return ff_qsv_print_error(avctx, ret,
                                  "Error initializing the MFX video decoder");

    q->frame_info = param->mfx.FrameInfo;

    if (!avctx->hw_frames_ctx)
        q->pool = av_buffer_pool_init(av_image_get_buffer_size(avctx->pix_fmt,
                    FFALIGN(avctx->width, 128), FFALIGN(avctx->height, 64), 1), av_buffer_allocz);
    return 0;
}
