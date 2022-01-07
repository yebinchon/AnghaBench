
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_13__ {int channels; int frame_size; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int pts; scalar_t__* data; } ;
struct TYPE_11__ {int duration; int pts; int * data; } ;
struct TYPE_10__ {int input_frames; size_t buffered_samples; int* lastSample; int first_pts; int * frame_buffer; } ;
typedef TYPE_1__ ROQDPCMContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int FFMAX (int,int) ;
 scalar_t__ ROQ_HEADER_SIZE ;
 int bytestream_put_byte (int **,int) ;
 int bytestream_put_le16 (int **,int) ;
 int bytestream_put_le32 (int **,int) ;
 int dpcm_predict (int*,int ) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,scalar_t__,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int roq_dpcm_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                                 const AVFrame *frame, int *got_packet_ptr)
{
    int i, stereo, data_size, ret;
    const int16_t *in = frame ? (const int16_t *)frame->data[0] : ((void*)0);
    uint8_t *out;
    ROQDPCMContext *context = avctx->priv_data;

    stereo = (avctx->channels == 2);

    if (!in && context->input_frames >= 8)
        return 0;

    if (in && context->input_frames < 8) {
        memcpy(&context->frame_buffer[context->buffered_samples * avctx->channels],
               in, avctx->frame_size * avctx->channels * sizeof(*in));
        context->buffered_samples += avctx->frame_size;
        if (context->input_frames == 0)
            context->first_pts = frame->pts;
        if (context->input_frames < 7) {
            context->input_frames++;
            return 0;
        }
    }
    if (context->input_frames < 8)
        in = context->frame_buffer;

    if (stereo) {
        context->lastSample[0] &= 0xFF00;
        context->lastSample[1] &= 0xFF00;
    }

    if (context->input_frames == 7)
        data_size = avctx->channels * context->buffered_samples;
    else
        data_size = avctx->channels * avctx->frame_size;

    if ((ret = ff_alloc_packet2(avctx, avpkt, ROQ_HEADER_SIZE + data_size, 0)) < 0)
        return ret;
    out = avpkt->data;

    bytestream_put_byte(&out, stereo ? 0x21 : 0x20);
    bytestream_put_byte(&out, 0x10);
    bytestream_put_le32(&out, data_size);

    if (stereo) {
        bytestream_put_byte(&out, (context->lastSample[1])>>8);
        bytestream_put_byte(&out, (context->lastSample[0])>>8);
    } else
        bytestream_put_le16(&out, context->lastSample[0]);


    for (i = 0; i < data_size; i++)
        *out++ = dpcm_predict(&context->lastSample[i & 1], *in++);

    avpkt->pts = context->input_frames <= 7 ? context->first_pts : frame->pts;
    avpkt->duration = data_size / avctx->channels;

    context->input_frames++;
    if (!in)
        context->input_frames = FFMAX(context->input_frames, 8);

    *got_packet_ptr = 1;
    return 0;
}
