
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {TYPE_4__* priv_data; } ;
struct TYPE_19__ {int member_0; } ;
struct TYPE_18__ {TYPE_1__* decoder_ref; } ;
struct TYPE_17__ {int ctx; TYPE_2__* mpi; int eos_reached; } ;
struct TYPE_16__ {int (* control ) (int ,int ,int*) ;} ;
struct TYPE_15__ {scalar_t__ data; } ;
typedef int RK_S32 ;
typedef TYPE_3__ RKMPPDecoder ;
typedef TYPE_4__ RKMPPDecodeContext ;
typedef TYPE_5__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int INPUT_MAX_PACKETS ;
 int MPP_DEC_GET_STREAM_COUNT ;
 int MPP_NOK ;
 int MPP_OK ;
 int av_log (TYPE_6__*,int ,char*,int) ;
 int av_packet_unref (TYPE_5__*) ;
 int ff_decode_get_packet (TYPE_6__*,TYPE_5__*) ;
 int rkmpp_retrieve_frame (TYPE_6__*,int *) ;
 int rkmpp_send_packet (TYPE_6__*,TYPE_5__*) ;
 int stub1 (int ,int ,int*) ;

__attribute__((used)) static int rkmpp_receive_frame(AVCodecContext *avctx, AVFrame *frame)
{
    RKMPPDecodeContext *rk_context = avctx->priv_data;
    RKMPPDecoder *decoder = (RKMPPDecoder *)rk_context->decoder_ref->data;
    int ret = MPP_NOK;
    AVPacket pkt = {0};
    RK_S32 usedslots, freeslots;

    if (!decoder->eos_reached) {

        ret = decoder->mpi->control(decoder->ctx, MPP_DEC_GET_STREAM_COUNT, &usedslots);
        if (ret != MPP_OK) {
            av_log(avctx, AV_LOG_ERROR, "Failed to get decoder used slots (code = %d).\n", ret);
            return ret;
        }

        freeslots = INPUT_MAX_PACKETS - usedslots;
        if (freeslots > 0) {
            ret = ff_decode_get_packet(avctx, &pkt);
            if (ret < 0 && ret != AVERROR_EOF) {
                return ret;
            }

            ret = rkmpp_send_packet(avctx, &pkt);
            av_packet_unref(&pkt);

            if (ret < 0) {
                av_log(avctx, AV_LOG_ERROR, "Failed to send packet to decoder (code = %d)\n", ret);
                return ret;
            }
        }


        if (freeslots > 1)
            return AVERROR(EAGAIN);
    }

    return rkmpp_retrieve_frame(avctx, frame);
}
