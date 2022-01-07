
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_25__ {int afq; int handle; } ;
struct TYPE_24__ {int numBufs; void** bufs; int* bufferIdentifiers; int* bufSizes; int* bufElSizes; int member_0; } ;
struct TYPE_23__ {int numInSamples; int member_0; } ;
struct TYPE_22__ {int numOutBytes; int member_0; } ;
struct TYPE_21__ {int channels; int frame_size; TYPE_7__* priv_data; } ;
struct TYPE_20__ {int nb_samples; void** data; } ;
struct TYPE_19__ {int size; int duration; int pts; void* data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ AACENC_OutArgs ;
typedef TYPE_5__ AACENC_InArgs ;
typedef scalar_t__ AACENC_ERROR ;
typedef TYPE_6__ AACENC_BufDesc ;
typedef TYPE_7__ AACContext ;


 scalar_t__ AACENC_ENCODE_EOF ;
 scalar_t__ AACENC_OK ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int FFMAX (int,int) ;
 int IN_AUDIO_DATA ;
 int OUT_BITSTREAM_DATA ;
 scalar_t__ aacEncEncode (int ,TYPE_6__*,TYPE_6__*,TYPE_5__*,TYPE_4__*) ;
 int aac_get_error (scalar_t__) ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 int ff_af_queue_add (int *,TYPE_2__ const*) ;
 int ff_af_queue_remove (int *,int ,int *,int *) ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int aac_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                            const AVFrame *frame, int *got_packet_ptr)
{
    AACContext *s = avctx->priv_data;
    AACENC_BufDesc in_buf = { 0 }, out_buf = { 0 };
    AACENC_InArgs in_args = { 0 };
    AACENC_OutArgs out_args = { 0 };
    int in_buffer_identifier = IN_AUDIO_DATA;
    int in_buffer_size, in_buffer_element_size;
    int out_buffer_identifier = OUT_BITSTREAM_DATA;
    int out_buffer_size, out_buffer_element_size;
    void *in_ptr, *out_ptr;
    int ret;
    uint8_t dummy_buf[1];
    AACENC_ERROR err;


    if (!frame) {


        in_ptr = dummy_buf;
        in_buffer_size = 0;

        in_args.numInSamples = -1;
    } else {
        in_ptr = frame->data[0];
        in_buffer_size = 2 * avctx->channels * frame->nb_samples;

        in_args.numInSamples = avctx->channels * frame->nb_samples;


        if ((ret = ff_af_queue_add(&s->afq, frame)) < 0)
            return ret;
    }

    in_buffer_element_size = 2;
    in_buf.numBufs = 1;
    in_buf.bufs = &in_ptr;
    in_buf.bufferIdentifiers = &in_buffer_identifier;
    in_buf.bufSizes = &in_buffer_size;
    in_buf.bufElSizes = &in_buffer_element_size;


    if ((ret = ff_alloc_packet2(avctx, avpkt, FFMAX(8192, 768 * avctx->channels), 0)) < 0)
        return ret;

    out_ptr = avpkt->data;
    out_buffer_size = avpkt->size;
    out_buffer_element_size = 1;
    out_buf.numBufs = 1;
    out_buf.bufs = &out_ptr;
    out_buf.bufferIdentifiers = &out_buffer_identifier;
    out_buf.bufSizes = &out_buffer_size;
    out_buf.bufElSizes = &out_buffer_element_size;

    if ((err = aacEncEncode(s->handle, &in_buf, &out_buf, &in_args,
                            &out_args)) != AACENC_OK) {
        if (!frame && err == AACENC_ENCODE_EOF)
            return 0;
        av_log(avctx, AV_LOG_ERROR, "Unable to encode frame: %s\n",
               aac_get_error(err));
        return AVERROR(EINVAL);
    }

    if (!out_args.numOutBytes)
        return 0;


    ff_af_queue_remove(&s->afq, avctx->frame_size, &avpkt->pts,
                       &avpkt->duration);

    avpkt->size = out_args.numOutBytes;
    *got_packet_ptr = 1;
    return 0;
}
