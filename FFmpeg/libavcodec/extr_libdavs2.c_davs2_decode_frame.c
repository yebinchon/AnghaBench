
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int len; int dts; int pts; int * data; } ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int dts; int pts; int * data; } ;
struct TYPE_10__ {int out_frame; int decoder; int headerset; TYPE_6__ packet; } ;
typedef TYPE_1__ DAVS2Context ;
typedef TYPE_2__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int DAVS2_DEFAULT ;
 int DAVS2_ERROR ;
 int av_log (TYPE_3__*,int ,char*) ;
 int davs2_decoder_frame_unref (int ,int *) ;
 int davs2_decoder_recv_frame (int ,int *,int *) ;
 int davs2_decoder_send_packet (int ,TYPE_6__*) ;
 int davs2_dump_frames (TYPE_3__*,int *,int*,int *,int,int *) ;
 int send_delayed_frame (TYPE_3__*,int *,int*) ;

__attribute__((used)) static int davs2_decode_frame(AVCodecContext *avctx, void *data,
                              int *got_frame, AVPacket *avpkt)
{
    DAVS2Context *cad = avctx->priv_data;
    int buf_size = avpkt->size;
    uint8_t *buf_ptr = avpkt->data;
    AVFrame *frame = data;
    int ret = DAVS2_DEFAULT;


    if (!buf_size) {
        return send_delayed_frame(avctx, frame, got_frame);
    }

    cad->packet.data = buf_ptr;
    cad->packet.len = buf_size;
    cad->packet.pts = avpkt->pts;
    cad->packet.dts = avpkt->dts;

    ret = davs2_decoder_send_packet(cad->decoder, &cad->packet);


    if (ret == DAVS2_ERROR) {
        av_log(avctx, AV_LOG_ERROR, "Decoder error: can't read packet\n");
        return AVERROR_EXTERNAL;
    }

    ret = davs2_decoder_recv_frame(cad->decoder, &cad->headerset, &cad->out_frame);

    if (ret != DAVS2_DEFAULT) {
        ret = davs2_dump_frames(avctx, &cad->out_frame, got_frame, &cad->headerset, ret, frame);
        davs2_decoder_frame_unref(cad->decoder, &cad->out_frame);
    }

    return ret == 0 ? buf_size : ret;
}
