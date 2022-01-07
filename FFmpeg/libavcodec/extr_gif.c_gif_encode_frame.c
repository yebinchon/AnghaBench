
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int width; int height; scalar_t__ pix_fmt; int frame_number; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int * linesize; scalar_t__* data; } ;
struct TYPE_14__ {int size; int flags; int * data; } ;
struct TYPE_13__ {int palette_loaded; scalar_t__ image; scalar_t__ last_frame; int palette; int transparent_index; } ;
typedef TYPE_1__ GIFContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVPALETTE_SIZE ;
 scalar_t__ AV_INPUT_BUFFER_MIN_SIZE ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int AV_PKT_FLAG_KEY ;
 int ENOMEM ;
 scalar_t__ av_frame_alloc () ;
 int av_frame_ref (scalar_t__,TYPE_3__*) ;
 int av_frame_unref (scalar_t__) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,scalar_t__,int ) ;
 int get_palette_transparency_index (int const*) ;
 int gif_image_write_image (TYPE_4__*,int **,int *,int const*,scalar_t__,int ,TYPE_2__*) ;
 int memcmp (int ,int const*,int ) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static int gif_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                            const AVFrame *pict, int *got_packet)
{
    GIFContext *s = avctx->priv_data;
    uint8_t *outbuf_ptr, *end;
    const uint32_t *palette = ((void*)0);
    int ret;

    if ((ret = ff_alloc_packet2(avctx, pkt, avctx->width*avctx->height*7/5 + AV_INPUT_BUFFER_MIN_SIZE, 0)) < 0)
        return ret;
    outbuf_ptr = pkt->data;
    end = pkt->data + pkt->size;

    if (avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        palette = (uint32_t*)pict->data[1];

        if (!s->palette_loaded) {
            memcpy(s->palette, palette, AVPALETTE_SIZE);
            s->transparent_index = get_palette_transparency_index(palette);
            s->palette_loaded = 1;
        } else if (!memcmp(s->palette, palette, AVPALETTE_SIZE)) {
            palette = ((void*)0);
        }
    }

    gif_image_write_image(avctx, &outbuf_ptr, end, palette,
                          pict->data[0], pict->linesize[0], pkt);
    if (!s->last_frame && !s->image) {
        s->last_frame = av_frame_alloc();
        if (!s->last_frame)
            return AVERROR(ENOMEM);
    }

    if (!s->image) {
        av_frame_unref(s->last_frame);
        ret = av_frame_ref(s->last_frame, (AVFrame*)pict);
        if (ret < 0)
            return ret;
    }

    pkt->size = outbuf_ptr - pkt->data;
    if (s->image || !avctx->frame_number)
        pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}
