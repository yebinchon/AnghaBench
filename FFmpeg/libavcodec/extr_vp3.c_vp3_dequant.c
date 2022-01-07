
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int int16_t ;
struct TYPE_5__ {size_t qpi; int dc; } ;
typedef TYPE_1__ Vp3Fragment ;
struct TYPE_6__ {int**** qmat; size_t* idct_scantable; int*** dct_tokens; int avctx; } ;
typedef TYPE_2__ Vp3DecodeContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static inline int vp3_dequant(Vp3DecodeContext *s, Vp3Fragment *frag,
                              int plane, int inter, int16_t block[64])
{
    int16_t *dequantizer = s->qmat[frag->qpi][inter][plane];
    uint8_t *perm = s->idct_scantable;
    int i = 0;

    do {
        int token = *s->dct_tokens[plane][i];
        switch (token & 3) {
        case 0:
            if (--token < 4)
                s->dct_tokens[plane][i]++;
            else
                *s->dct_tokens[plane][i] = token & ~3;
            goto end;
        case 1:
            s->dct_tokens[plane][i]++;
            i += (token >> 2) & 0x7f;
            if (i > 63) {
                av_log(s->avctx, AV_LOG_ERROR, "Coefficient index overflow\n");
                return i;
            }
            block[perm[i]] = (token >> 9) * dequantizer[perm[i]];
            i++;
            break;
        case 2:
            block[perm[i]] = (token >> 2) * dequantizer[perm[i]];
            s->dct_tokens[plane][i++]++;
            break;
        default:
            return i;
        }
    } while (i < 64);

    i--;
end:

    block[0] = frag->dc * s->qmat[0][inter][plane][0];
    return i;
}
