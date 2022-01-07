
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int int64_t ;
typedef int int16_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int bc; } ;
typedef TYPE_1__ PixletContext ;
typedef int GetBitContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 unsigned int FFMIN (int,int) ;
 int align_get_bits (int *) ;
 int av_mod_uintp2 (int,unsigned int) ;
 int ff_clz (int) ;
 int get_bits (int *,int) ;
 int get_bits_count (int *) ;
 unsigned int get_unary (int *,int ,int) ;
 int show_bits (int *,unsigned int) ;
 int skip_bits (int *,unsigned int) ;

__attribute__((used)) static int read_low_coeffs(AVCodecContext *avctx, int16_t *dst, int size,
                           int width, ptrdiff_t stride)
{
    PixletContext *ctx = avctx->priv_data;
    GetBitContext *bc = &ctx->bc;
    unsigned cnt1, nbits, k, j = 0, i = 0;
    int64_t value, state = 3;
    int rlen, escape, flag = 0;

    while (i < size) {
        nbits = FFMIN(ff_clz((state >> 8) + 3) ^ 0x1F, 14);

        cnt1 = get_unary(bc, 0, 8);
        if (cnt1 < 8) {
            value = show_bits(bc, nbits);
            if (value <= 1) {
                skip_bits(bc, nbits - 1);
                escape = ((1 << nbits) - 1) * cnt1;
            } else {
                skip_bits(bc, nbits);
                escape = value + ((1 << nbits) - 1) * cnt1 - 1;
            }
        } else {
            escape = get_bits(bc, 16);
        }

        value = -((escape + flag) & 1) | 1;
        dst[j++] = value * ((escape + flag + 1) >> 1);
        i++;
        if (j == width) {
            j = 0;
            dst += stride;
        }
        state = 120 * (escape + flag) + state - (120 * state >> 8);
        flag = 0;

        if (state * 4ULL > 0xFF || i >= size)
            continue;

        nbits = ((state + 8) >> 5) + (state ? ff_clz(state) : 32) - 24;
        escape = av_mod_uintp2(16383, nbits);
        cnt1 = get_unary(bc, 0, 8);
        if (cnt1 > 7) {
            rlen = get_bits(bc, 16);
        } else {
            value = show_bits(bc, nbits);
            if (value > 1) {
                skip_bits(bc, nbits);
                rlen = value + escape * cnt1 - 1;
            } else {
                skip_bits(bc, nbits - 1);
                rlen = escape * cnt1;
            }
        }

        if (rlen > size - i)
            return AVERROR_INVALIDDATA;
        i += rlen;

        for (k = 0; k < rlen; k++) {
            dst[j++] = 0;
            if (j == width) {
                j = 0;
                dst += stride;
            }
        }

        state = 0;
        flag = rlen < 0xFFFF ? 1 : 0;
    }

    align_get_bits(bc);
    return get_bits_count(bc) >> 3;
}
