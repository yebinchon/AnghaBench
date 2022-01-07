
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {int palette_has_changed; int const** data; } ;
struct TYPE_14__ {int size; int * data; } ;
struct TYPE_13__ {int size; int const* pal; int const* buf; } ;
typedef TYPE_1__ IdcinContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int av_log (TYPE_4__*,int ,char*,int) ;
 int * av_packet_get_side_data (TYPE_2__*,int ,int*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 scalar_t__ idcin_decode_vlcs (TYPE_1__*,TYPE_3__*) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static int idcin_decode_frame(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    IdcinContext *s = avctx->priv_data;
    int pal_size;
    const uint8_t *pal = av_packet_get_side_data(avpkt, AV_PKT_DATA_PALETTE, &pal_size);
    AVFrame *frame = data;
    int ret;

    s->buf = buf;
    s->size = buf_size;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    if (idcin_decode_vlcs(s, frame))
        return AVERROR_INVALIDDATA;

    if (pal && pal_size == AVPALETTE_SIZE) {
        frame->palette_has_changed = 1;
        memcpy(s->pal, pal, AVPALETTE_SIZE);
    } else if (pal) {
        av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", pal_size);
    }

    memcpy(frame->data[1], s->pal, AVPALETTE_SIZE);

    *got_frame = 1;


    return buf_size;
}
