
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ TargaContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FFMIN (int,int) ;
 int * advance_line (int *,int *,int,int*,int,int) ;
 int av_log (int *,int ,char*) ;
 int bytestream2_get_buffer (int *,int *,int) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int targa_decode_rle(AVCodecContext *avctx, TargaContext *s,
                            uint8_t *start, int w, int h, int stride,
                            int bpp, int interleave)
{
    int x, y;
    int depth = (bpp + 1) >> 3;
    int type, count;
    uint8_t *line = start;
    uint8_t *dst = line;

    x = y = count = 0;
    while (dst) {
        if (bytestream2_get_bytes_left(&s->gb) <= 0) {
            av_log(avctx, AV_LOG_ERROR,
                   "Ran ouf of data before end-of-image\n");
            return AVERROR_INVALIDDATA;
        }
        type = bytestream2_get_byteu(&s->gb);
        count = (type & 0x7F) + 1;
        type &= 0x80;
        if (!type) {
            do {
                int n = FFMIN(count, w - x);
                bytestream2_get_buffer(&s->gb, dst, n * depth);
                count -= n;
                dst += n * depth;
                x += n;
                if (x == w) {
                    x = 0;
                    dst = line = advance_line(start, line, stride, &y, h, interleave);
                }
            } while (dst && count > 0);
        } else {
            uint8_t tmp[4];
            bytestream2_get_buffer(&s->gb, tmp, depth);
            do {
                int n = FFMIN(count, w - x);
                count -= n;
                x += n;
                do {
                    memcpy(dst, tmp, depth);
                    dst += depth;
                } while (--n);
                if (x == w) {
                    x = 0;
                    dst = line = advance_line(start, line, stride, &y, h, interleave);
                }
            } while (dst && count > 0);
        }
    }

    if (count) {
        av_log(avctx, AV_LOG_ERROR, "Packet went out of bounds\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
