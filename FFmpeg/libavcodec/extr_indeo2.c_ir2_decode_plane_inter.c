
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ Ir2Context ;


 int AVERROR_INVALIDDATA ;
 int av_clip_uint8 (int) ;
 scalar_t__ get_bits_left (int *) ;
 int ir2_get_code (int *) ;

__attribute__((used)) static int ir2_decode_plane_inter(Ir2Context *ctx, int width, int height, uint8_t *dst,
                                  int pitch, const uint8_t *table)
{
    int j;
    int out = 0;
    int c;
    int t;

    if (width & 1)
        return AVERROR_INVALIDDATA;

    for (j = 0; j < height; j++) {
        out = 0;
        while (out < width) {
            if (get_bits_left(&ctx->gb) <= 0)
                return AVERROR_INVALIDDATA;
            c = ir2_get_code(&ctx->gb);
            if (c >= 0x80) {
                c -= 0x7F;
                out += c * 2;
            } else {
                if (c <= 0)
                    return AVERROR_INVALIDDATA;
                t = dst[out] + (((table[c * 2] - 128)*3) >> 2);
                t = av_clip_uint8(t);
                dst[out] = t;
                out++;
                t = dst[out] + (((table[(c * 2) + 1] - 128)*3) >> 2);
                t = av_clip_uint8(t);
                dst[out] = t;
                out++;
            }
        }
        dst += pitch;
    }
    return 0;
}
