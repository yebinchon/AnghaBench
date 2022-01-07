
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 int align_get_bits (int *) ;
 int decode_run_2bit (int *,int*) ;
 int decode_run_8bit (int *,int*) ;
 int get_bits_count (int *) ;
 int init_get_bits (int *,int const*,int) ;
 int memset (int*,int,int) ;

__attribute__((used)) static int decode_rle(uint8_t *bitmap, int linesize, int w, int h, uint8_t used_color[256],
                      const uint8_t *buf, int start, int buf_size, int is_8bit)
{
    GetBitContext gb;
    int bit_len;
    int x, y, len, color;
    uint8_t *d;

    if (start >= buf_size)
        return -1;

    if (w <= 0 || h <= 0)
        return -1;

    bit_len = (buf_size - start) * 8;
    init_get_bits(&gb, buf + start, bit_len);

    x = 0;
    y = 0;
    d = bitmap;
    for(;;) {
        if (get_bits_count(&gb) > bit_len)
            return -1;
        if (is_8bit)
            len = decode_run_8bit(&gb, &color);
        else
            len = decode_run_2bit(&gb, &color);
        if (len != INT_MAX && len > w - x)
            return AVERROR_INVALIDDATA;
        len = FFMIN(len, w - x);
        memset(d + x, color, len);
        used_color[color] = 1;
        x += len;
        if (x >= w) {
            y++;
            if (y >= h)
                break;
            d += linesize;
            x = 0;

            align_get_bits(&gb);
        }
    }
    return 0;
}
