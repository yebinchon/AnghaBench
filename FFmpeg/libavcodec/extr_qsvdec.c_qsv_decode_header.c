
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int CodecId; } ;
struct TYPE_18__ {TYPE_1__ mfx; } ;
typedef TYPE_2__ mfxVideoParam ;
struct TYPE_19__ {int DataFlag; int TimeStamp; scalar_t__ DataLength; scalar_t__ MaxLength; int Data; int member_0; } ;
typedef TYPE_3__ mfxBitstream ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_22__ {scalar_t__ field_order; int codec_id; } ;
struct TYPE_21__ {int pts; scalar_t__ size; int data; } ;
struct TYPE_20__ {int session; } ;
typedef TYPE_4__ QSVContext ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_FIELD_PROGRESSIVE ;
 int EAGAIN ;
 int MFXVideoDECODE_DecodeHeader (int ,TYPE_3__*,TYPE_2__*) ;
 int MFX_BITSTREAM_COMPLETE_FRAME ;
 int MFX_ERR_MORE_DATA ;
 int ff_qsv_codec_id_to_mfx (int ) ;
 int ff_qsv_print_error (TYPE_6__*,int,char*) ;
 int qsv_decode_preinit (TYPE_6__*,TYPE_4__*,int,TYPE_2__*) ;

__attribute__((used)) static int qsv_decode_header(AVCodecContext *avctx, QSVContext *q, AVPacket *avpkt, enum AVPixelFormat pix_fmt, mfxVideoParam *param)
{
    int ret;

    mfxBitstream bs = { 0 };

    if (avpkt->size) {
        bs.Data = avpkt->data;
        bs.DataLength = avpkt->size;
        bs.MaxLength = bs.DataLength;
        bs.TimeStamp = avpkt->pts;
        if (avctx->field_order == AV_FIELD_PROGRESSIVE)
            bs.DataFlag |= MFX_BITSTREAM_COMPLETE_FRAME;
    } else
        return AVERROR_INVALIDDATA;


    if(!q->session) {
        ret = qsv_decode_preinit(avctx, q, pix_fmt, param);
        if (ret < 0)
            return ret;
    }

    ret = ff_qsv_codec_id_to_mfx(avctx->codec_id);
    if (ret < 0)
        return ret;

    param->mfx.CodecId = ret;
    ret = MFXVideoDECODE_DecodeHeader(q->session, &bs, param);
    if (MFX_ERR_MORE_DATA == ret) {
       return AVERROR(EAGAIN);
    }
    if (ret < 0)
        return ff_qsv_print_error(avctx, ret,
                "Error decoding stream header");

    return 0;
}
