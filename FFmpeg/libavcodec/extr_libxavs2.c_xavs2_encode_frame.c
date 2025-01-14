
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_15__ ;


struct TYPE_25__ {int enc_sample_size; int in_sample_size; } ;
struct TYPE_27__ {int i_type; int i_pts; scalar_t__ i_state; TYPE_1__ img; } ;
typedef TYPE_3__ xavs2_picture_t ;
struct TYPE_24__ {scalar_t__ state; scalar_t__ len; int stream; int dts; int pts; } ;
struct TYPE_28__ {TYPE_15__ packet; int encoder; TYPE_2__* api; int param; } ;
typedef TYPE_4__ XAVS2EContext ;
struct TYPE_31__ {TYPE_4__* priv_data; } ;
struct TYPE_30__ {int format; int pts; } ;
struct TYPE_29__ {scalar_t__ size; int data; int dts; int pts; } ;
struct TYPE_26__ {scalar_t__ (* encoder_get_buffer ) (int ,TYPE_3__*) ;int (* encoder_encode ) (int ,TYPE_3__*,TYPE_15__*) ;int (* encoder_packet_unref ) (int ,TYPE_15__*) ;int (* opt_get ) (int ,char*) ;} ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ XAVS2_STATE_FLUSH_END ;
 int XAVS2_TYPE_AUTO ;
 int atoi (int ) ;
 int av_log (TYPE_7__*,int ,char*) ;
 scalar_t__ av_new_packet (TYPE_5__*,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 scalar_t__ stub1 (int ,TYPE_3__*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,TYPE_3__*,TYPE_15__*) ;
 int stub4 (int ,TYPE_3__*,TYPE_15__*) ;
 int stub5 (int ,TYPE_15__*) ;
 int stub6 (int ,TYPE_15__*) ;
 int xavs2_copy_frame (TYPE_3__*,TYPE_6__ const*) ;
 int xavs2_copy_frame_with_shift (TYPE_3__*,TYPE_6__ const*,int const) ;

__attribute__((used)) static int xavs2_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                              const AVFrame *frame, int *got_packet)
{
    XAVS2EContext *cae = avctx->priv_data;
    xavs2_picture_t pic;
    int ret;



    if (cae->api->encoder_get_buffer(cae->encoder, &pic) < 0) {
        av_log(avctx,AV_LOG_ERROR, "failed to get frame buffer\n");
        return AVERROR_EXTERNAL;
    }
    if (frame) {
        switch (frame->format) {
        case 129:
            if (pic.img.in_sample_size == pic.img.enc_sample_size) {
                xavs2_copy_frame(&pic, frame);
            } else {
                const int shift_in = atoi(cae->api->opt_get(cae->param, "SampleShift"));
                xavs2_copy_frame_with_shift(&pic, frame, shift_in);
            }
            break;
        case 128:
            if (pic.img.in_sample_size == pic.img.enc_sample_size) {
                xavs2_copy_frame(&pic, frame);
                break;
            }
        default:
            av_log(avctx, AV_LOG_ERROR, "Unsupported pixel format\n");
            return AVERROR(EINVAL);
            break;
        }

        pic.i_state = 0;
        pic.i_pts = frame->pts;
        pic.i_type = XAVS2_TYPE_AUTO;

        ret = cae->api->encoder_encode(cae->encoder, &pic, &cae->packet);

        if (ret) {
            av_log(avctx, AV_LOG_ERROR, "encode failed\n");
            return AVERROR_EXTERNAL;
        }

    } else {
        cae->api->encoder_encode(cae->encoder, ((void*)0), &cae->packet);
    }

    if ((cae->packet.len) && (cae->packet.state != XAVS2_STATE_FLUSH_END)){

        if (av_new_packet(pkt, cae->packet.len) < 0){
            av_log(avctx, AV_LOG_ERROR, "packet alloc failed\n");
            cae->api->encoder_packet_unref(cae->encoder, &cae->packet);
            return AVERROR(ENOMEM);
        }

        pkt->pts = cae->packet.pts;
        pkt->dts = cae->packet.dts;

        memcpy(pkt->data, cae->packet.stream, cae->packet.len);
        pkt->size = cae->packet.len;

        cae->api->encoder_packet_unref(cae->encoder, &cae->packet);

        *got_packet = 1;
    } else {
        *got_packet = 0;
    }

    return 0;
}
