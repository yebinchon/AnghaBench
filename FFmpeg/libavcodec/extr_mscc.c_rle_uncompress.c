
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_5__ {int bits_per_coded_sample; unsigned int width; TYPE_1__* priv_data; } ;
struct TYPE_4__ {unsigned int bpp; } ;
typedef int PutByteContext ;
typedef TYPE_1__ MSCCContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int SEEK_SET ;
 unsigned int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 unsigned int bytestream2_get_le16 (int *) ;
 unsigned int bytestream2_get_le24 (int *) ;
 unsigned int bytestream2_get_le32 (int *) ;
 int bytestream2_put_byte (int *,unsigned int) ;
 int bytestream2_put_le16 (int *,unsigned int) ;
 int bytestream2_put_le24 (int *,unsigned int) ;
 int bytestream2_put_le32 (int *,unsigned int) ;
 int bytestream2_seek_p (int *,unsigned int,int ) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int rle_uncompress(AVCodecContext *avctx, GetByteContext *gb, PutByteContext *pb)
{
    MSCCContext *s = avctx->priv_data;
    unsigned x = 0, y = 0;

    while (bytestream2_get_bytes_left(gb) > 0) {
        uint32_t fill;
        int j;
        unsigned run = bytestream2_get_byte(gb);

        if (run) {
            switch (avctx->bits_per_coded_sample) {
            case 8:
                fill = bytestream2_get_byte(gb);
                break;
            case 16:
                fill = bytestream2_get_le16(gb);
                break;
            case 24:
                fill = bytestream2_get_le24(gb);
                break;
            case 32:
                fill = bytestream2_get_le32(gb);
                break;
            }

            for (j = 0; j < run; j++) {
                switch (avctx->bits_per_coded_sample) {
                case 8:
                    bytestream2_put_byte(pb, fill);
                    break;
                case 16:
                    bytestream2_put_le16(pb, fill);
                    break;
                case 24:
                    bytestream2_put_le24(pb, fill);
                    break;
                case 32:
                    bytestream2_put_le32(pb, fill);
                    break;
                }
            }
            x += run;
        } else {
            unsigned copy = bytestream2_get_byte(gb);

            if (copy == 0) {
                x = 0;
                y++;
                bytestream2_seek_p(pb, y * avctx->width * s->bpp, SEEK_SET);
            } else if (copy == 1) {
                return 0;
            } else if (copy == 2) {

                x += bytestream2_get_byte(gb);
                y += bytestream2_get_byte(gb);

                bytestream2_seek_p(pb, y * avctx->width * s->bpp + x * s->bpp, SEEK_SET);
            } else {
                for (j = 0; j < copy; j++) {
                    switch (avctx->bits_per_coded_sample) {
                    case 8:
                        bytestream2_put_byte(pb, bytestream2_get_byte(gb));
                        break;
                    case 16:
                        bytestream2_put_le16(pb, bytestream2_get_le16(gb));
                        break;
                    case 24:
                        bytestream2_put_le24(pb, bytestream2_get_le24(gb));
                        break;
                    case 32:
                        bytestream2_put_le32(pb, bytestream2_get_le32(gb));
                        break;
                    }
                }

                if (s->bpp == 1 && (copy & 1))
                    bytestream2_skip(gb, 1);
                x += copy;
            }
        }
    }

    return AVERROR_INVALIDDATA;
}
