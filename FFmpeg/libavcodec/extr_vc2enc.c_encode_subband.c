
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ dwtcoef ;
struct TYPE_5__ {int num_x; int num_y; int** qmagic_lut; } ;
typedef TYPE_1__ VC2EncContext ;
struct TYPE_6__ {int width; int height; int const stride; scalar_t__* buf; } ;
typedef TYPE_2__ SubBand ;
typedef int PutBitContext ;


 int FFABS (scalar_t__) ;
 scalar_t__ QUANT (int ,int const,int const,int const) ;
 int av_log2 (int ) ;
 int * ff_dirac_qscale_tab ;
 int put_bits (int *,int,int) ;
 int put_vc2_ue_uint (int *,scalar_t__) ;

__attribute__((used)) static void encode_subband(VC2EncContext *s, PutBitContext *pb, int sx, int sy,
                           SubBand *b, int quant)
{
    int x, y;

    const int left = b->width * (sx+0) / s->num_x;
    const int right = b->width * (sx+1) / s->num_x;
    const int top = b->height * (sy+0) / s->num_y;
    const int bottom = b->height * (sy+1) / s->num_y;

    dwtcoef *coeff = b->buf + top * b->stride;
    const uint64_t q_m = ((uint64_t)(s->qmagic_lut[quant][0])) << 2;
    const uint64_t q_a = s->qmagic_lut[quant][1];
    const int q_s = av_log2(ff_dirac_qscale_tab[quant]) + 32;

    for (y = top; y < bottom; y++) {
        for (x = left; x < right; x++) {
            uint32_t c_abs = QUANT(FFABS(coeff[x]), q_m, q_a, q_s);
            put_vc2_ue_uint(pb, c_abs);
            if (c_abs)
                put_bits(pb, 1, coeff[x] < 0);
        }
        coeff += b->stride;
    }
}
