
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_10__ {int table; } ;
typedef TYPE_2__ VLC ;
struct TYPE_9__ {int (* bswap_buf ) (int *,int const*,int) ;} ;
struct TYPE_12__ {scalar_t__ tmpbuf; TYPE_1__ bdsp; int avctx; } ;
struct TYPE_11__ {int count; } ;
typedef TYPE_3__ Node ;
typedef int GetBitContext ;
typedef TYPE_4__ FrapsContext ;


 int AVERROR_INVALIDDATA ;
 int FF_HUFFMAN_FLAG_ZERO_COUNT ;
 int VLC_BITS ;
 int bytestream_get_le32 (scalar_t__ const**) ;
 int ff_free_vlc (TYPE_2__*) ;
 int ff_huff_build_tree (int ,TYPE_2__*,int,int ,TYPE_3__*,int ,int ) ;
 scalar_t__ get_bits_left (int *) ;
 scalar_t__ get_vlc2 (int *,int ,int ,int) ;
 int huff_cmp ;
 int init_get_bits8 (int *,scalar_t__,int) ;
 int stub1 (int *,int const*,int) ;

__attribute__((used)) static int fraps2_decode_plane(FrapsContext *s, uint8_t *dst, int stride, int w,
                               int h, const uint8_t *src, int size, int Uoff,
                               const int step)
{
    int i, j, ret;
    GetBitContext gb;
    VLC vlc;
    Node nodes[512];

    for (i = 0; i < 256; i++)
        nodes[i].count = bytestream_get_le32(&src);
    size -= 1024;
    if ((ret = ff_huff_build_tree(s->avctx, &vlc, 256, VLC_BITS,
                                  nodes, huff_cmp,
                                  FF_HUFFMAN_FLAG_ZERO_COUNT)) < 0)
        return ret;



    s->bdsp.bswap_buf((uint32_t *) s->tmpbuf,
                      (const uint32_t *) src, size >> 2);

    if ((ret = init_get_bits8(&gb, s->tmpbuf, size)) < 0)
        return ret;

    for (j = 0; j < h; j++) {
        for (i = 0; i < w*step; i += step) {
            dst[i] = get_vlc2(&gb, vlc.table, VLC_BITS, 3);



            if (j)
                dst[i] += dst[i - stride];
            else if (Uoff)
                dst[i] += 0x80;
            if (get_bits_left(&gb) < 0) {
                ff_free_vlc(&vlc);
                return AVERROR_INVALIDDATA;
            }
        }
        dst += stride;
    }
    ff_free_vlc(&vlc);
    return 0;
}
