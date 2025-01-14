
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_22__ {int height; int bits_per_coded_sample; scalar_t__ discard_damaged_percentage; TYPE_1__* priv_data; } ;
struct TYPE_21__ {int size; int data; } ;
struct TYPE_20__ {TYPE_13__* frame; int const* pal; TYPE_3__* avctx; int g; } ;
struct TYPE_19__ {int* linesize; int palette_has_changed; int const** data; } ;
typedef TYPE_1__ QtrleContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int av_frame_ref (void*,TYPE_13__*) ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int * av_packet_get_side_data (TYPE_2__*,int ,int*) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_be32 (int *) ;
 int bytestream2_init (int *,int ,int) ;
 int bytestream2_skip (int *,int) ;
 int ff_decode_frame_props (TYPE_3__*,TYPE_13__*) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_13__*,int ) ;
 int memcpy (int const*,int const*,int) ;
 int qtrle_decode_16bpp (TYPE_1__*,int,int) ;
 int qtrle_decode_1bpp (TYPE_1__*,int,int) ;
 int qtrle_decode_24bpp (TYPE_1__*,int,int) ;
 int qtrle_decode_2n4bpp (TYPE_1__*,int,int,int) ;
 int qtrle_decode_32bpp (TYPE_1__*,int,int) ;
 int qtrle_decode_8bpp (TYPE_1__*,int,int) ;

__attribute__((used)) static int qtrle_decode_frame(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    QtrleContext *s = avctx->priv_data;
    int header, start_line;
    int height, row_ptr;
    int has_palette = 0;
    int duplicate = 0;
    int ret, size;

    bytestream2_init(&s->g, avpkt->data, avpkt->size);


    if (avpkt->size < 8) {
        duplicate = 1;
        goto done;
    }


    size = bytestream2_get_be32(&s->g) & 0x3FFFFFFF;
    if (size - avpkt->size > size * (int64_t)avctx->discard_damaged_percentage / 100)
        return AVERROR_INVALIDDATA;



    header = bytestream2_get_be16(&s->g);


    if (header & 0x0008) {
        if (avpkt->size < 14) {
            duplicate = 1;
            goto done;
        }
        start_line = bytestream2_get_be16(&s->g);
        bytestream2_skip(&s->g, 2);
        height = bytestream2_get_be16(&s->g);
        bytestream2_skip(&s->g, 2);
        if (height > s->avctx->height - start_line) {
            duplicate = 1;
            goto done;
        }
    } else {
        start_line = 0;
        height = s->avctx->height;
    }
    if ((ret = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return ret;

    row_ptr = s->frame->linesize[0] * start_line;

    switch (avctx->bits_per_coded_sample) {
    case 1:
    case 33:
        qtrle_decode_1bpp(s, row_ptr, height);
        has_palette = 1;
        break;

    case 2:
    case 34:
        qtrle_decode_2n4bpp(s, row_ptr, height, 2);
        has_palette = 1;
        break;

    case 4:
    case 36:
        qtrle_decode_2n4bpp(s, row_ptr, height, 4);
        has_palette = 1;
        break;

    case 8:
    case 40:
        qtrle_decode_8bpp(s, row_ptr, height);
        has_palette = 1;
        break;

    case 16:
        qtrle_decode_16bpp(s, row_ptr, height);
        break;

    case 24:
        qtrle_decode_24bpp(s, row_ptr, height);
        break;

    case 32:
        qtrle_decode_32bpp(s, row_ptr, height);
        break;

    default:
        av_log (s->avctx, AV_LOG_ERROR, "Unsupported colorspace: %d bits/sample?\n",
            avctx->bits_per_coded_sample);
        break;
    }

    if(has_palette) {
        int size;
        const uint8_t *pal = av_packet_get_side_data(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            s->frame->palette_has_changed = 1;
            memcpy(s->pal, pal, AVPALETTE_SIZE);
        } else if (pal) {
            av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }


        memcpy(s->frame->data[1], s->pal, AVPALETTE_SIZE);
    }

done:
    if (!s->frame->data[0])
        return AVERROR_INVALIDDATA;
    if (duplicate) {


        ret = ff_decode_frame_props(avctx, s->frame);
        if (ret < 0)
            return ret;
    }

    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;
    *got_frame = 1;


    return avpkt->size;
}
