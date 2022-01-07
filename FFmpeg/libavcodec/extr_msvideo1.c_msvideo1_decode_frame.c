
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int palette_has_changed; } ;
struct TYPE_15__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int size; int * data; } ;
struct TYPE_13__ {int size; TYPE_9__* frame; scalar_t__ mode_8bit; int pal; int const* buf; } ;
typedef TYPE_1__ Msvideo1Context ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int av_frame_ref (void*,TYPE_9__*) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int * av_packet_get_side_data (TYPE_2__*,int ,int*) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_9__*,int ) ;
 int memcpy (int ,int const*,int) ;
 int msvideo1_decode_16bit (TYPE_1__*) ;
 int msvideo1_decode_8bit (TYPE_1__*) ;

__attribute__((used)) static int msvideo1_decode_frame(AVCodecContext *avctx,
                                void *data, int *got_frame,
                                AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    Msvideo1Context *s = avctx->priv_data;
    int ret;

    s->buf = buf;
    s->size = buf_size;


    if (buf_size < (avctx->width/4) * (avctx->height/4) / 512) {
        av_log(avctx, AV_LOG_ERROR, "Packet is too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return ret;

    if (s->mode_8bit) {
        int size;
        const uint8_t *pal = av_packet_get_side_data(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            memcpy(s->pal, pal, AVPALETTE_SIZE);
            s->frame->palette_has_changed = 1;
        } else if (pal) {
            av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }
    }

    if (s->mode_8bit)
        msvideo1_decode_8bit(s);
    else
        msvideo1_decode_16bit(s);

    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;

    *got_frame = 1;


    return buf_size;
}
