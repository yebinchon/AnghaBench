
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ Width; scalar_t__ Height; int FourCC; } ;
struct TYPE_24__ {TYPE_1__ FrameInfo; } ;
struct TYPE_25__ {TYPE_2__ mfx; int member_0; } ;
typedef TYPE_3__ mfxVideoParam ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_28__ {int coded_width; int coded_height; int pix_fmt; } ;
struct TYPE_27__ {int member_0; int size; } ;
struct TYPE_26__ {scalar_t__ orig_pix_fmt; int reinit_flag; int initialized; scalar_t__ buffered_count; } ;
typedef TYPE_4__ QSVContext ;
typedef TYPE_5__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_NV12 ;
 scalar_t__ ff_qsv_map_fourcc (int ) ;
 int qsv_decode (TYPE_6__*,TYPE_4__*,int *,int*,TYPE_5__*) ;
 int qsv_decode_header (TYPE_6__*,TYPE_4__*,TYPE_5__*,int,TYPE_3__*) ;
 int qsv_decode_init (TYPE_6__*,TYPE_4__*,TYPE_3__*) ;
 int qsv_decode_preinit (TYPE_6__*,TYPE_4__*,int,TYPE_3__*) ;

int ff_qsv_process_data(AVCodecContext *avctx, QSVContext *q,
                        AVFrame *frame, int *got_frame, AVPacket *pkt)
{
    int ret;
    mfxVideoParam param = { 0 };
    enum AVPixelFormat pix_fmt = AV_PIX_FMT_NV12;

    if (!pkt->size)
        return qsv_decode(avctx, q, frame, got_frame, pkt);






    if (q->orig_pix_fmt != AV_PIX_FMT_NONE)
        pix_fmt = q->orig_pix_fmt;
    if (!avctx->coded_width)
        avctx->coded_width = 1280;
    if (!avctx->coded_height)
        avctx->coded_height = 720;

    ret = qsv_decode_header(avctx, q, pkt, pix_fmt, &param);

    if (ret >= 0 && (q->orig_pix_fmt != ff_qsv_map_fourcc(param.mfx.FrameInfo.FourCC) ||
        avctx->coded_width != param.mfx.FrameInfo.Width ||
        avctx->coded_height != param.mfx.FrameInfo.Height)) {
        AVPacket zero_pkt = {0};

        if (q->buffered_count) {
            q->reinit_flag = 1;

            q->buffered_count--;
            return qsv_decode(avctx, q, frame, got_frame, &zero_pkt);
        }
        q->reinit_flag = 0;

        q->orig_pix_fmt = avctx->pix_fmt = pix_fmt = ff_qsv_map_fourcc(param.mfx.FrameInfo.FourCC);

        avctx->coded_width = param.mfx.FrameInfo.Width;
        avctx->coded_height = param.mfx.FrameInfo.Height;

        ret = qsv_decode_preinit(avctx, q, pix_fmt, &param);
        if (ret < 0)
            goto reinit_fail;
        q->initialized = 0;
    }

    if (!q->initialized) {
        ret = qsv_decode_init(avctx, q, &param);
        if (ret < 0)
            goto reinit_fail;
        q->initialized = 1;
    }

    return qsv_decode(avctx, q, frame, got_frame, pkt);

reinit_fail:
    q->orig_pix_fmt = avctx->pix_fmt = AV_PIX_FMT_NONE;
    return ret;
}
