
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_19__ {void* f; } ;
typedef TYPE_2__ ThreadFrame ;
struct TYPE_18__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_23__ {scalar_t__ pix_fmt; TYPE_1__ sample_aspect_ratio; int (* execute2 ) (TYPE_6__*,int ,TYPE_5__*,int *,int) ;TYPE_3__* priv_data; } ;
struct TYPE_22__ {int key_frame; int * data; int pict_type; } ;
struct TYPE_21__ {int size; int data; } ;
struct TYPE_20__ {int curtileno; int numXtiles; int numYtiles; int g; TYPE_1__ sar; int palette; TYPE_6__* avctx; int cdef; } ;
typedef TYPE_3__ Jpeg2000DecoderContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int JP2_SIG_TYPE ;
 int JP2_SIG_VALUE ;
 scalar_t__ JPEG2000_SOC ;
 int SEEK_SET ;
 int av_log (TYPE_6__*,int ,char*) ;
 scalar_t__ bytestream2_get_be16u (int *) ;
 int bytestream2_get_be32u (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_init (int *,int ,int ) ;
 scalar_t__ bytestream2_peek_be16 (int *) ;
 int bytestream2_seek (int *,int ,int ) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;
 int ff_thread_get_buffer (TYPE_6__*,TYPE_2__*,int ) ;
 int jp2_find_codestream (TYPE_3__*) ;
 int jpeg2000_dec_cleanup (TYPE_3__*) ;
 int jpeg2000_decode_tile ;
 int jpeg2000_read_bitstream_packets (TYPE_3__*) ;
 int jpeg2000_read_main_headers (TYPE_3__*) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int,int) ;
 int stub1 (TYPE_6__*,int ,TYPE_5__*,int *,int) ;

__attribute__((used)) static int jpeg2000_decode_frame(AVCodecContext *avctx, void *data,
                                 int *got_frame, AVPacket *avpkt)
{
    Jpeg2000DecoderContext *s = avctx->priv_data;
    ThreadFrame frame = { .f = data };
    AVFrame *picture = data;
    int ret;

    s->avctx = avctx;
    bytestream2_init(&s->g, avpkt->data, avpkt->size);
    s->curtileno = -1;
    memset(s->cdef, -1, sizeof(s->cdef));

    if (bytestream2_get_bytes_left(&s->g) < 2) {
        ret = AVERROR_INVALIDDATA;
        goto end;
    }


    if (bytestream2_get_bytes_left(&s->g) >= 12 &&
       (bytestream2_get_be32u(&s->g) == 12) &&
       (bytestream2_get_be32u(&s->g) == JP2_SIG_TYPE) &&
       (bytestream2_get_be32u(&s->g) == JP2_SIG_VALUE)) {
        if (!jp2_find_codestream(s)) {
            av_log(avctx, AV_LOG_ERROR,
                   "Could not find Jpeg2000 codestream atom.\n");
            ret = AVERROR_INVALIDDATA;
            goto end;
        }
    } else {
        bytestream2_seek(&s->g, 0, SEEK_SET);
    }

    while (bytestream2_get_bytes_left(&s->g) >= 3 && bytestream2_peek_be16(&s->g) != JPEG2000_SOC)
        bytestream2_skip(&s->g, 1);

    if (bytestream2_get_be16u(&s->g) != JPEG2000_SOC) {
        av_log(avctx, AV_LOG_ERROR, "SOC marker not present\n");
        ret = AVERROR_INVALIDDATA;
        goto end;
    }
    if (ret = jpeg2000_read_main_headers(s))
        goto end;


    if ((ret = ff_thread_get_buffer(avctx, &frame, 0)) < 0)
        goto end;
    picture->pict_type = AV_PICTURE_TYPE_I;
    picture->key_frame = 1;

    if (ret = jpeg2000_read_bitstream_packets(s))
        goto end;

    avctx->execute2(avctx, jpeg2000_decode_tile, picture, ((void*)0), s->numXtiles * s->numYtiles);

    jpeg2000_dec_cleanup(s);

    *got_frame = 1;

    if (s->avctx->pix_fmt == AV_PIX_FMT_PAL8)
        memcpy(picture->data[1], s->palette, 256 * sizeof(uint32_t));
    if (s->sar.num && s->sar.den)
        avctx->sample_aspect_ratio = s->sar;
    s->sar.num = s->sar.den = 0;

    return bytestream2_tell(&s->g);

end:
    jpeg2000_dec_cleanup(s);
    return ret;
}
