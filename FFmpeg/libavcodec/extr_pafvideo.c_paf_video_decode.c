
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* int8_t ;
typedef int int64_t ;
struct TYPE_14__ {int** data; int key_frame; int palette_has_changed; int * linesize; int pict_type; } ;
struct TYPE_13__ {scalar_t__ discard_damaged_percentage; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int size; int data; } ;
struct TYPE_11__ {int video_size; size_t current_frame; int* dirty; int** frame; int frame_size; TYPE_7__* pic; int height; int width; int gb; } ;
typedef TYPE_1__ PAFVideoDecContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int FFABS (void*) ;
 int av_assert0 (int ) ;
 int av_frame_ref (void*,TYPE_7__*) ;
 int av_image_copy_plane (int*,int ,int*,int ,int ,int ) ;
 int avpriv_request_sample (TYPE_3__*,char*) ;
 int bytestream2_get_buffer (int *,int*,int) ;
 int bytestream2_get_bufferu (int *,int*,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_byteu (int *) ;
 int bytestream2_init (int *,int ,int) ;
 int bytestream2_skip (int *,int) ;
 int decode_0 (TYPE_1__*,int ,int) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_7__*,int ) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,void*,int) ;

__attribute__((used)) static int paf_video_decode(AVCodecContext *avctx, void *data,
                            int *got_frame, AVPacket *pkt)
{
    PAFVideoDecContext *c = avctx->priv_data;
    uint8_t code, *dst, *end;
    int i, frame, ret;

    if (pkt->size < 2)
        return AVERROR_INVALIDDATA;

    bytestream2_init(&c->gb, pkt->data, pkt->size);

    code = bytestream2_get_byte(&c->gb);
    if ((code & 0xF) > 4 || (code & 0xF) == 3) {
        avpriv_request_sample(avctx, "unknown/invalid code");
        return AVERROR_INVALIDDATA;
    }

    if ((code & 0xF) == 0 &&
        c->video_size / 32 - (int64_t)bytestream2_get_bytes_left(&c->gb) > c->video_size / 32 * (int64_t)avctx->discard_damaged_percentage / 100)
        return AVERROR_INVALIDDATA;

    if ((ret = ff_reget_buffer(avctx, c->pic, 0)) < 0)
        return ret;

    if (code & 0x20) {
        memset(c->pic->data[1], 0, AVPALETTE_SIZE);
        c->current_frame = 0;
        c->pic->key_frame = 1;
        c->pic->pict_type = AV_PICTURE_TYPE_I;
    } else {
        c->pic->key_frame = 0;
        c->pic->pict_type = AV_PICTURE_TYPE_P;
    }

    if (code & 0x40) {
        uint32_t *out = (uint32_t *)c->pic->data[1];
        int index, count;

        index = bytestream2_get_byte(&c->gb);
        count = bytestream2_get_byte(&c->gb) + 1;

        if (index + count > 256)
            return AVERROR_INVALIDDATA;
        if (bytestream2_get_bytes_left(&c->gb) < 3 * count)
            return AVERROR_INVALIDDATA;

        out += index;
        for (i = 0; i < count; i++) {
            unsigned r, g, b;

            r = bytestream2_get_byteu(&c->gb);
            r = r << 2 | r >> 4;
            g = bytestream2_get_byteu(&c->gb);
            g = g << 2 | g >> 4;
            b = bytestream2_get_byteu(&c->gb);
            b = b << 2 | b >> 4;
            *out++ = (0xFFU << 24) | (r << 16) | (g << 8) | b;
        }
        c->pic->palette_has_changed = 1;
    }

    c->dirty[c->current_frame] = 1;
    if (code & 0x20)
        for (i = 0; i < 4; i++) {
            if (c->dirty[i])
                memset(c->frame[i], 0, c->frame_size);
            c->dirty[i] = 0;
        }

    switch (code & 0x0F) {
    case 0:


        if ((ret = decode_0(c, pkt->data, code)) < 0)
            return ret;
        break;
    case 1:


        dst = c->frame[c->current_frame];

        bytestream2_skip(&c->gb, 2);
        if (bytestream2_get_bytes_left(&c->gb) < c->video_size)
            return AVERROR_INVALIDDATA;
        bytestream2_get_bufferu(&c->gb, dst, c->video_size);
        break;
    case 2:



        frame = bytestream2_get_byte(&c->gb);
        if (frame > 3)
            return AVERROR_INVALIDDATA;
        if (frame != c->current_frame)
            memcpy(c->frame[c->current_frame], c->frame[frame], c->frame_size);
        break;
    case 4:

        dst = c->frame[c->current_frame];
        end = dst + c->video_size;

        bytestream2_skip(&c->gb, 2);

        while (dst < end) {
            int8_t code;
            int count;

            if (bytestream2_get_bytes_left(&c->gb) < 2)
                return AVERROR_INVALIDDATA;

            code = bytestream2_get_byteu(&c->gb);
            count = FFABS(code) + 1;

            if (dst + count > end)
                return AVERROR_INVALIDDATA;
            if (code < 0)
                memset(dst, bytestream2_get_byteu(&c->gb), count);
            else
                bytestream2_get_buffer(&c->gb, dst, count);
            dst += count;
        }
        break;
    default:
        av_assert0(0);
    }

    av_image_copy_plane(c->pic->data[0], c->pic->linesize[0],
                        c->frame[c->current_frame], c->width,
                        c->width, c->height);

    c->current_frame = (c->current_frame + 1) & 3;
    if ((ret = av_frame_ref(data, c->pic)) < 0)
        return ret;

    *got_frame = 1;

    return pkt->size;
}
