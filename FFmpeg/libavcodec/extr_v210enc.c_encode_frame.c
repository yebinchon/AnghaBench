
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_21__ {int width; int height; } ;
struct TYPE_20__ {scalar_t__ format; } ;
struct TYPE_19__ {scalar_t__ size; int data; } ;
struct TYPE_18__ {int flags; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrameSideData ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_FRAME_DATA_A53_CC ;
 int AV_FRAME_DATA_AFD ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_YUV422P ;
 scalar_t__ AV_PIX_FMT_YUV422P10 ;
 int AV_PKT_DATA_A53_CC ;
 int AV_PKT_DATA_AFD ;
 int AV_PKT_FLAG_KEY ;
 int ENOMEM ;
 TYPE_2__* av_frame_get_side_data (TYPE_3__ const*,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int * av_packet_new_side_data (TYPE_1__*,int ,scalar_t__) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_1__*,int,int) ;
 int memcpy (int *,int ,scalar_t__) ;
 int v210_enc_10 (TYPE_4__*,int *,TYPE_3__ const*) ;
 int v210_enc_8 (TYPE_4__*,int *,TYPE_3__ const*) ;

__attribute__((used)) static int encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                        const AVFrame *pic, int *got_packet)
{
    int aligned_width = ((avctx->width + 47) / 48) * 48;
    int stride = aligned_width * 8 / 3;
    AVFrameSideData *side_data;
    int ret;
    uint8_t *dst;

    ret = ff_alloc_packet2(avctx, pkt, avctx->height * stride, avctx->height * stride);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error getting output packet.\n");
        return ret;
    }
    dst = pkt->data;

    if (pic->format == AV_PIX_FMT_YUV422P10)
        v210_enc_10(avctx, dst, pic);
    else if(pic->format == AV_PIX_FMT_YUV422P)
        v210_enc_8(avctx, dst, pic);

    side_data = av_frame_get_side_data(pic, AV_FRAME_DATA_A53_CC);
    if (side_data && side_data->size) {
        uint8_t *buf = av_packet_new_side_data(pkt, AV_PKT_DATA_A53_CC, side_data->size);
        if (!buf)
            return AVERROR(ENOMEM);
        memcpy(buf, side_data->data, side_data->size);
    }

    side_data = av_frame_get_side_data(pic, AV_FRAME_DATA_AFD);
    if (side_data && side_data->size) {
        uint8_t *buf = av_packet_new_side_data(pkt, AV_PKT_DATA_AFD, side_data->size);
        if (!buf)
            return AVERROR(ENOMEM);
        memcpy(buf, side_data->data, side_data->size);
    }

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}
