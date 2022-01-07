
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AVERROR_INVALIDDATA ;
 int AV_RB16 (int const*) ;
 int bytestream_put_le24 (int**,int ) ;

__attribute__((used)) static int decode_hybrid(const uint8_t *sptr, const uint8_t *sptr_end, uint8_t *dptr, int dx, int dy,
                         int h, int w, int stride, const uint32_t *pal)
{
    int x, y;
    const uint8_t *orig_src = sptr;

    for (y = dx + h; y > dx; y--) {
        uint8_t *dst = dptr + (y * stride) + dy * 3;
        for (x = 0; x < w; x++) {
            if (sptr >= sptr_end)
                return AVERROR_INVALIDDATA;
            if (*sptr & 0x80) {

                unsigned c = AV_RB16(sptr) & ~0x8000;
                unsigned b = c & 0x1F;
                unsigned g = (c >> 5) & 0x1F;
                unsigned r = c >> 10;

                *dst++ = (b << 3) | (b >> 2);
                *dst++ = (g << 3) | (g >> 2);
                *dst++ = (r << 3) | (r >> 2);
                sptr += 2;
            } else {

                uint32_t c = pal[*sptr++];
                bytestream_put_le24(&dst, c);
            }
        }
    }
    return sptr - orig_src;
}
