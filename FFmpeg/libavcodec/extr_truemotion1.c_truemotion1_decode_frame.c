
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_12__ {int size; size_t compression; int frame; int const* buf; } ;
typedef TYPE_1__ TrueMotion1Context ;
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int size; int * data; } ;
struct TYPE_11__ {scalar_t__ algorithm; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ ALGO_NOP ;
 scalar_t__ ALGO_RGB24H ;
 int av_frame_ref (void*,int ) ;
 TYPE_10__* compression_types ;
 int ff_reget_buffer (TYPE_3__*,int ,int ) ;
 int truemotion1_decode_16bit (TYPE_1__*) ;
 int truemotion1_decode_24bit (TYPE_1__*) ;
 int truemotion1_decode_header (TYPE_1__*) ;

__attribute__((used)) static int truemotion1_decode_frame(AVCodecContext *avctx,
                                    void *data, int *got_frame,
                                    AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int ret, buf_size = avpkt->size;
    TrueMotion1Context *s = avctx->priv_data;

    s->buf = buf;
    s->size = buf_size;

    if ((ret = truemotion1_decode_header(s)) < 0)
        return ret;

    if ((ret = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return ret;

    if (compression_types[s->compression].algorithm == ALGO_RGB24H) {
        truemotion1_decode_24bit(s);
    } else if (compression_types[s->compression].algorithm != ALGO_NOP) {
        truemotion1_decode_16bit(s);
    }

    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;

    *got_frame = 1;


    return buf_size;
}
