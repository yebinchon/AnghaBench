
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int8_t ;
struct TYPE_3__ {int avctx; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AC3DecodeContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int EXP_D45 ;
 int av_log (int ,int ,char*,int) ;
 int get_bits (int *,int) ;
 int** ungroup_3_in_7_bits_tab ;

__attribute__((used)) static int decode_exponents(AC3DecodeContext *s,
                            GetBitContext *gbc, int exp_strategy, int ngrps,
                            uint8_t absexp, int8_t *dexps)
{
    int i, j, grp, group_size;
    int dexp[256];
    int expacc, prevexp;


    group_size = exp_strategy + (exp_strategy == EXP_D45);
    for (grp = 0, i = 0; grp < ngrps; grp++) {
        expacc = get_bits(gbc, 7);
        if (expacc >= 125) {
            av_log(s->avctx, AV_LOG_ERROR, "expacc %d is out-of-range\n", expacc);
            return AVERROR_INVALIDDATA;
        }
        dexp[i++] = ungroup_3_in_7_bits_tab[expacc][0];
        dexp[i++] = ungroup_3_in_7_bits_tab[expacc][1];
        dexp[i++] = ungroup_3_in_7_bits_tab[expacc][2];
    }


    prevexp = absexp;
    for (i = 0, j = 0; i < ngrps * 3; i++) {
        prevexp += dexp[i] - 2;
        if (prevexp > 24U) {
            av_log(s->avctx, AV_LOG_ERROR, "exponent %d is out-of-range\n", prevexp);
            return AVERROR_INVALIDDATA;
        }
        switch (group_size) {
        case 4: dexps[j++] = prevexp;
                dexps[j++] = prevexp;
        case 2: dexps[j++] = prevexp;
        case 1: dexps[j++] = prevexp;
        }
    }
    return 0;
}
