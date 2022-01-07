
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t coef_idx; int coef; void* lag; } ;
typedef TYPE_1__ LongTermPrediction ;


 void* FFMAX (int ,int) ;
 int av_clip_uintp2 (int,int) ;
 int * ltp_coef ;
 size_t quant_array_idx (float,int *,int) ;
 float sqrt (float) ;

__attribute__((used)) static void get_lag(float *buf, const float *new, LongTermPrediction *ltp)
{
    int i, j, lag = 0, max_corr = 0;
    float max_ratio = 0.0f;
    for (i = 0; i < 2048; i++) {
        float corr, s0 = 0.0f, s1 = 0.0f;
        const int start = FFMAX(0, i - 1024);
        for (j = start; j < 2048; j++) {
            const int idx = j - i + 1024;
            s0 += new[j]*buf[idx];
            s1 += buf[idx]*buf[idx];
        }
        corr = s1 > 0.0f ? s0/sqrt(s1) : 0.0f;
        if (corr > max_corr) {
            max_corr = corr;
            lag = i;
            max_ratio = corr/(2048-start);
        }
    }
    ltp->lag = FFMAX(av_clip_uintp2(lag, 11), 0);
    ltp->coef_idx = quant_array_idx(max_ratio, ltp_coef, 8);
    ltp->coef = ltp_coef[ltp->coef_idx];
}
