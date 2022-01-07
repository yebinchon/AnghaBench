
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int size; int * data; } ;
struct TYPE_13__ {TYPE_10__* frame; int palette; int gb; } ;
struct TYPE_12__ {int * data; } ;
typedef TYPE_1__ MmContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_RL16 (int const*) ;
 int MM_PREAMBLE_SIZE ;







 int av_frame_ref (void*,TYPE_10__*) ;
 int bytestream2_init (int *,int const*,int) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_10__*,int ) ;
 int memcpy (int ,int ,int ) ;
 int mm_decode_inter (TYPE_1__*,int,int) ;
 int mm_decode_intra (TYPE_1__*,int,int) ;
 int mm_decode_pal (TYPE_1__*) ;

__attribute__((used)) static int mm_decode_frame(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MmContext *s = avctx->priv_data;
    int type, res;

    if (buf_size < MM_PREAMBLE_SIZE)
        return AVERROR_INVALIDDATA;
    type = AV_RL16(&buf[0]);
    buf += MM_PREAMBLE_SIZE;
    buf_size -= MM_PREAMBLE_SIZE;
    bytestream2_init(&s->gb, buf, buf_size);

    if ((res = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return res;

    switch(type) {
    case 128 : mm_decode_pal(s); return avpkt->size;
    case 131 : res = mm_decode_intra(s, 0, 0); break;
    case 130 : res = mm_decode_intra(s, 1, 0); break;
    case 129 : res = mm_decode_intra(s, 1, 1); break;
    case 134 : res = mm_decode_inter(s, 0, 0); break;
    case 133 : res = mm_decode_inter(s, 1, 0); break;
    case 132 : res = mm_decode_inter(s, 1, 1); break;
    default:
        res = AVERROR_INVALIDDATA;
        break;
    }
    if (res < 0)
        return res;

    memcpy(s->frame->data[1], s->palette, AVPALETTE_SIZE);

    if ((res = av_frame_ref(data, s->frame)) < 0)
        return res;

    *got_frame = 1;

    return avpkt->size;
}
