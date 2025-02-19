
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int mode; int* lsfdeqold; int nsub; } ;
typedef TYPE_1__ ILBCContext ;


 int LPC_FILTERORDER ;
 int bw_expand (int*,int*,int ,int) ;
 int kLpcChirpSyntDenum ;
 int * lsf_weight_20ms ;
 int * lsf_weight_30ms ;
 int lsp_interpolate2polydec (int*,int*,int*,int ,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void lsp_interpolate(int16_t *syntdenum, int16_t *weightdenum,
                            int16_t *lsfdeq, int16_t length,
                            ILBCContext *s)
{
    int16_t lp[LPC_FILTERORDER + 1], *lsfdeq2;
    int i, pos, lp_length;

    lsfdeq2 = lsfdeq + length;
    lp_length = length + 1;

    if (s->mode == 30) {
        lsp_interpolate2polydec(lp, (*s).lsfdeqold, lsfdeq, lsf_weight_30ms[0], length);
        memcpy(syntdenum, lp, lp_length * 2);
        bw_expand(weightdenum, lp, kLpcChirpSyntDenum, lp_length);

        pos = lp_length;
        for (i = 1; i < 6; i++) {
            lsp_interpolate2polydec(lp, lsfdeq, lsfdeq2,
                                                 lsf_weight_30ms[i],
                                                 length);
            memcpy(syntdenum + pos, lp, lp_length * 2);
            bw_expand(weightdenum + pos, lp, kLpcChirpSyntDenum, lp_length);
            pos += lp_length;
        }
    } else {
        pos = 0;
        for (i = 0; i < s->nsub; i++) {
            lsp_interpolate2polydec(lp, s->lsfdeqold, lsfdeq,
                                    lsf_weight_20ms[i], length);
            memcpy(syntdenum + pos, lp, lp_length * 2);
            bw_expand(weightdenum + pos, lp, kLpcChirpSyntDenum, lp_length);
            pos += lp_length;
        }
    }

    if (s->mode == 30) {
        memcpy(s->lsfdeqold, lsfdeq2, length * 2);
    } else {
        memcpy(s->lsfdeqold, lsfdeq, length * 2);
    }
}
