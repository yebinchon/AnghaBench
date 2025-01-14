
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int* sumLenArr; int* skipFlagRaw; int* flcoeffs6; int* flcoeffs1; int* skipFlagCount; scalar_t__* skipFlagBits; scalar_t__* CWlengthT; scalar_t__* skipFlags; scalar_t__* bandFlagsBuf; } ;
struct TYPE_9__ {int* sqrt_tab; } ;
typedef TYPE_1__ IMCContext ;
typedef TYPE_2__ IMCChannel ;


 int BANDS ;
 int* band_tab ;
 int imc_adjust_bit_allocation (TYPE_1__*,TYPE_2__*,int) ;
 int imc_get_skip_coeff (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void imc_refine_bit_allocation(IMCContext *q, IMCChannel *chctx)
{
    int i, j;
    int bits, summer;

    for (i = 0; i < BANDS; i++) {
        chctx->sumLenArr[i] = 0;
        chctx->skipFlagRaw[i] = 0;
        for (j = band_tab[i]; j < band_tab[i + 1]; j++)
            chctx->sumLenArr[i] += chctx->CWlengthT[j];
        if (chctx->bandFlagsBuf[i])
            if (((int)((band_tab[i + 1] - band_tab[i]) * 1.5) > chctx->sumLenArr[i]) && (chctx->sumLenArr[i] > 0))
                chctx->skipFlagRaw[i] = 1;
    }

    imc_get_skip_coeff(q, chctx);

    for (i = 0; i < BANDS; i++) {
        chctx->flcoeffs6[i] = chctx->flcoeffs1[i];

        if (chctx->bandFlagsBuf[i] && (band_tab[i + 1] - band_tab[i]) != chctx->skipFlagCount[i]) {
            chctx->flcoeffs6[i] *= q->sqrt_tab[ band_tab[i + 1] - band_tab[i]] /
                                   q->sqrt_tab[(band_tab[i + 1] - band_tab[i] - chctx->skipFlagCount[i])];
        }
    }


    bits = summer = 0;

    for (i = 0; i < BANDS; i++) {
        if (chctx->bandFlagsBuf[i]) {
            for (j = band_tab[i]; j < band_tab[i + 1]; j++) {
                if (chctx->skipFlags[j]) {
                    summer += chctx->CWlengthT[j];
                    chctx->CWlengthT[j] = 0;
                }
            }
            bits += chctx->skipFlagBits[i];
            summer -= chctx->skipFlagBits[i];
        }
    }
    imc_adjust_bit_allocation(q, chctx, summer);
}
