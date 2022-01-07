
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_22__ {int avail_in; scalar_t__ avail_out; int next_out; int const* next_in; } ;
struct TYPE_21__ {TYPE_2__* priv_data; } ;
struct TYPE_20__ {int palette_has_changed; int const** data; } ;
struct TYPE_19__ {int size; int * data; } ;
struct TYPE_18__ {int const* pal; TYPE_1__* avctx; int gb; int bpp; TYPE_6__ zstream; scalar_t__ decomp_size; int decomp_buf; TYPE_4__* frame; } ;
struct TYPE_17__ {scalar_t__ pix_fmt; } ;
typedef TYPE_2__ CamtasiaContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_UNKNOWN ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int AV_PKT_DATA_PALETTE ;
 int Z_DATA_ERROR ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int av_frame_ref (void*,TYPE_4__*) ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int * av_packet_get_side_data (TYPE_3__*,int ,int*) ;
 int bytestream2_init (int *,int ,scalar_t__) ;
 int ff_msrle_decode (TYPE_5__*,TYPE_4__*,int ,int *) ;
 int ff_reget_buffer (TYPE_5__*,TYPE_4__*,int ) ;
 int inflate (TYPE_6__*,int ) ;
 int inflateReset (TYPE_6__*) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    CamtasiaContext * const c = avctx->priv_data;
    AVFrame *frame = c->frame;
    int ret;
    int palette_has_changed = 0;

    if (c->avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        int size;
        const uint8_t *pal = av_packet_get_side_data(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            palette_has_changed = 1;
            memcpy(c->pal, pal, AVPALETTE_SIZE);
        } else if (pal) {
            av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }
    }

    ret = inflateReset(&c->zstream);
    if (ret != Z_OK) {
        av_log(avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", ret);
        return AVERROR_UNKNOWN;
    }
    c->zstream.next_in = buf;
    c->zstream.avail_in = buf_size;
    c->zstream.next_out = c->decomp_buf;
    c->zstream.avail_out = c->decomp_size;
    ret = inflate(&c->zstream, Z_FINISH);

    if (ret == Z_DATA_ERROR && !palette_has_changed) {
        return buf_size;
    }

    if ((ret != Z_OK) && (ret != Z_STREAM_END) && (ret != Z_DATA_ERROR)) {
        av_log(avctx, AV_LOG_ERROR, "Inflate error: %d\n", ret);
        return AVERROR_UNKNOWN;
    }

    if ((ret = ff_reget_buffer(avctx, frame, 0)) < 0)
        return ret;

    if (ret != Z_DATA_ERROR) {
        bytestream2_init(&c->gb, c->decomp_buf,
                         c->decomp_size - c->zstream.avail_out);
        ff_msrle_decode(avctx, frame, c->bpp, &c->gb);
    }


    if (c->avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        frame->palette_has_changed = palette_has_changed;
        memcpy(frame->data[1], c->pal, AVPALETTE_SIZE);
    }

    if ((ret = av_frame_ref(data, frame)) < 0)
        return ret;
    *got_frame = 1;


    return buf_size;
}
