
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int16_t ;


 int LPC_FILTERORDER ;
 int SPL_MUL_16_16 (size_t,int ) ;
 int STATE_SHORT_LEN_30MS ;
 int filter_arfq12 (size_t*,size_t*,size_t*,int,int) ;
 int filter_mafq12 (size_t*,size_t*,size_t*,int,size_t) ;
 size_t* frg_quant_mod ;
 int * ilbc_state ;
 int memset (size_t*,int ,size_t) ;

__attribute__((used)) static void state_construct(int16_t ifm, int16_t *idx,
                           int16_t *synt_denum, int16_t *Out_fix,
                           int16_t len)
{
    int k;
    int16_t maxVal;
    int16_t *tmp1, *tmp2, *tmp3;

    int16_t numerator[1 + LPC_FILTERORDER];
    int16_t sampleValVec[2 * STATE_SHORT_LEN_30MS + LPC_FILTERORDER];
    int16_t sampleMaVec[2 * STATE_SHORT_LEN_30MS + LPC_FILTERORDER];
    int16_t *sampleVal = &sampleValVec[LPC_FILTERORDER];
    int16_t *sampleMa = &sampleMaVec[LPC_FILTERORDER];
    int16_t *sampleAr = &sampleValVec[LPC_FILTERORDER];



    for (k = 0; k < LPC_FILTERORDER + 1; k++) {
        numerator[k] = synt_denum[LPC_FILTERORDER - k];
    }



    maxVal = frg_quant_mod[ifm];


    tmp1 = sampleVal;
    tmp2 = &idx[len - 1];

    if (ifm < 37) {
        for (k = 0; k < len; k++) {


            (*tmp1) = (int16_t) ((SPL_MUL_16_16(maxVal, ilbc_state[(*tmp2)]) + 2097152) >> 22);
            tmp1++;
            tmp2--;
        }
    } else if (ifm < 59) {
        for (k = 0; k < len; k++) {


            (*tmp1) = (int16_t) ((SPL_MUL_16_16(maxVal, ilbc_state[(*tmp2)]) + 262144) >> 19);
            tmp1++;
            tmp2--;
        }
    } else {
        for (k = 0; k < len; k++) {


            (*tmp1) = (int16_t) ((SPL_MUL_16_16(maxVal, ilbc_state[(*tmp2)]) + 65536) >> 17);
            tmp1++;
            tmp2--;
        }
    }


    memset(&sampleVal[len], 0, len * 2);




    memset(sampleValVec, 0, LPC_FILTERORDER * 2);


    filter_mafq12(sampleVal, sampleMa, numerator, LPC_FILTERORDER + 1, len + LPC_FILTERORDER);
    memset(&sampleMa[len + LPC_FILTERORDER], 0, (len - LPC_FILTERORDER) * 2);
    filter_arfq12(sampleMa, sampleAr, synt_denum, LPC_FILTERORDER + 1, 2 * len);

    tmp1 = &sampleAr[len - 1];
    tmp2 = &sampleAr[2 * len - 1];
    tmp3 = Out_fix;
    for (k = 0; k < len; k++) {
        (*tmp3) = (*tmp1) + (*tmp2);
        tmp1--;
        tmp2--;
        tmp3++;
    }
}
