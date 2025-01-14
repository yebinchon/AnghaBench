
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_19__ {int width; int height; int* extradata; TYPE_3__* priv_data; } ;
struct TYPE_18__ {int size; int * data; } ;
struct TYPE_15__ {int (* bswap_buf ) (int *,int const*,int) ;} ;
struct TYPE_17__ {int* changes_map; int codes_count; scalar_t__ max_codes_bits; TYPE_12__* frame; int vlc; TYPE_2__* codes; scalar_t__ bswapbuf; TYPE_1__ bdsp; int bswapbuf_size; } ;
struct TYPE_16__ {int code; int size; } ;
struct TYPE_14__ {scalar_t__* data; } ;
typedef TYPE_3__ MotionPixelsContext ;
typedef int HuffCode ;
typedef int GetBitContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_fast_padded_malloc (scalar_t__*,int *,int) ;
 int av_frame_ref (void*,TYPE_12__*) ;
 int ff_free_vlc (int *) ;
 int ff_reget_buffer (TYPE_5__*,TYPE_12__*,int ) ;
 int get_bits (int *,int) ;
 int init_get_bits (int *,scalar_t__,int) ;
 scalar_t__ init_vlc (int *,scalar_t__,int,int *,int,int,int *,int,int,int ) ;
 int memcpy (scalar_t__,int const*,int) ;
 int memset (int*,int ,int) ;
 int mp_decode_frame_helper (TYPE_3__*,int *) ;
 int mp_read_changes_map (TYPE_3__*,int *,int,int,int) ;
 scalar_t__ mp_read_codes_table (TYPE_3__*,int *) ;
 int stub1 (int *,int const*,int) ;

__attribute__((used)) static int mp_decode_frame(AVCodecContext *avctx,
                                 void *data, int *got_frame,
                                 AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MotionPixelsContext *mp = avctx->priv_data;
    GetBitContext gb;
    int i, count1, count2, sz, ret;

    if ((ret = ff_reget_buffer(avctx, mp->frame, 0)) < 0)
        return ret;


    av_fast_padded_malloc(&mp->bswapbuf, &mp->bswapbuf_size, buf_size);
    if (!mp->bswapbuf)
        return AVERROR(ENOMEM);
    mp->bdsp.bswap_buf((uint32_t *) mp->bswapbuf, (const uint32_t *) buf,
                       buf_size / 4);
    if (buf_size & 3)
        memcpy(mp->bswapbuf + (buf_size & ~3), buf + (buf_size & ~3), buf_size & 3);
    init_get_bits(&gb, mp->bswapbuf, buf_size * 8);

    memset(mp->changes_map, 0, avctx->width * avctx->height);
    for (i = !(avctx->extradata[1] & 2); i < 2; ++i) {
        count1 = get_bits(&gb, 12);
        count2 = get_bits(&gb, 12);
        mp_read_changes_map(mp, &gb, count1, 8, i);
        mp_read_changes_map(mp, &gb, count2, 4, i);
    }

    mp->codes_count = get_bits(&gb, 4);
    if (mp->codes_count == 0)
        goto end;

    if (mp->changes_map[0] == 0) {
        *(uint16_t *)mp->frame->data[0] = get_bits(&gb, 15);
        mp->changes_map[0] = 1;
    }
    if (mp_read_codes_table(mp, &gb) < 0)
        goto end;

    sz = get_bits(&gb, 18);
    if (avctx->extradata[0] != 5)
        sz += get_bits(&gb, 18);
    if (sz == 0)
        goto end;

    if (mp->max_codes_bits <= 0)
        goto end;
    if (init_vlc(&mp->vlc, mp->max_codes_bits, mp->codes_count, &mp->codes[0].size, sizeof(HuffCode), 1, &mp->codes[0].code, sizeof(HuffCode), 4, 0))
        goto end;
    mp_decode_frame_helper(mp, &gb);
    ff_free_vlc(&mp->vlc);

end:
    if ((ret = av_frame_ref(data, mp->frame)) < 0)
        return ret;
    *got_frame = 1;
    return buf_size;
}
