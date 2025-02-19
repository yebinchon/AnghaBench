
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_10__ {int size; int * data; } ;
struct TYPE_9__ {int initial_decode_frame; int delta; } ;
typedef TYPE_1__ CinAudioContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_RL16 (int const*) ;
 int av_clip_int16 (int) ;
 scalar_t__* cinaudio_delta16_table ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int sign_extend (int ,int) ;

__attribute__((used)) static int cinaudio_decode_frame(AVCodecContext *avctx, void *data,
                                 int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    CinAudioContext *cin = avctx->priv_data;
    const uint8_t *buf_end = buf + avpkt->size;
    int16_t *samples;
    int delta, ret;


    frame->nb_samples = avpkt->size - cin->initial_decode_frame;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    samples = (int16_t *)frame->data[0];

    delta = cin->delta;
    if (cin->initial_decode_frame) {
        cin->initial_decode_frame = 0;
        delta = sign_extend(AV_RL16(buf), 16);
        buf += 2;
        *samples++ = delta;
    }
    while (buf < buf_end) {
        delta += cinaudio_delta16_table[*buf++];
        delta = av_clip_int16(delta);
        *samples++ = delta;
    }
    cin->delta = delta;

    *got_frame_ptr = 1;

    return avpkt->size;
}
