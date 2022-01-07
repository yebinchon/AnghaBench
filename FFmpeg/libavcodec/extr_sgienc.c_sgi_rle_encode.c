
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int PutByteContext ;


 int AVERROR_INVALIDDATA ;
 int const AV_RB16 (int const*) ;
 int bytestream2_get_bytes_left_p (int *) ;
 void bytestream2_put_be16 (int *,unsigned int) ;
 void bytestream2_put_byte (int *,unsigned int) ;
 int bytestream2_tell_p (int *) ;
 int ff_rle_count_pixels (int const*,int,int,int) ;

__attribute__((used)) static int sgi_rle_encode(PutByteContext *pbc, const uint8_t *src,
                          int w, int bpp)
{
    int val, count, x, start = bytestream2_tell_p(pbc);
    void (*bytestream2_put)(PutByteContext *, unsigned int);

    if (bpp == 1)
        bytestream2_put = bytestream2_put_byte;
    else
        bytestream2_put = bytestream2_put_be16;

    for (x = 0; x < w; x += count) {

        count = ff_rle_count_pixels(src, w - x, bpp, 1);
        if (count > 1) {
            if (bytestream2_get_bytes_left_p(pbc) < bpp * 2)
                return AVERROR_INVALIDDATA;

            val = bpp == 1 ? *src : AV_RB16(src);
            bytestream2_put(pbc, count);
            bytestream2_put(pbc, val);
        } else {
            int i;

            count = ff_rle_count_pixels(src, w - x, bpp, 0);
            if (bytestream2_get_bytes_left_p(pbc) < bpp * (count + 1))
                return AVERROR_INVALIDDATA;

            bytestream2_put(pbc, count + 0x80);
            for (i = 0; i < count; i++) {
                val = bpp == 1 ? src[i] : AV_RB16(src + i * bpp);
                bytestream2_put(pbc, val);
            }
        }

        src += count * bpp;
    }

    return bytestream2_tell_p(pbc) - start;
}
