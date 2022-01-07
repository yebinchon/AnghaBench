
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Decorr {int delta; int value; int weightA; int weightB; int sumA; int sumB; int samplesB; int samplesA; int member_0; } ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ gt16bit; struct Decorr* dps; } ;
typedef TYPE_1__ WavPackExtraInfo ;


 int CLEAR (int ) ;
 int FFMIN (int,int) ;
 int decorr_stereo (int *,int *,int *,int *,int,struct Decorr*,int) ;
 int decorr_stereo_quick (int *,int *,int *,int *,int,struct Decorr*) ;
 int memcpy (int ,int ,int) ;
 int reverse_decorr (struct Decorr*) ;

__attribute__((used)) static void decorr_stereo_buffer(WavPackExtraInfo *info,
                                 int32_t *in_left, int32_t *in_right,
                                 int32_t *out_left, int32_t *out_right,
                                 int nb_samples, int tindex)
{
    struct Decorr dp = {0}, *dppi = info->dps + tindex;
    int delta = dppi->delta, pre_delta;
    int term = dppi->value;

    if (delta == 7)
        pre_delta = 7;
    else if (delta < 2)
        pre_delta = 3;
    else
        pre_delta = delta + 1;

    dp.value = term;
    dp.delta = pre_delta;
    decorr_stereo(in_left, in_right, out_left, out_right,
                  FFMIN(2048, nb_samples), &dp, -1);
    dp.delta = delta;

    if (tindex == 0) {
        reverse_decorr(&dp);
    } else {
        CLEAR(dp.samplesA);
        CLEAR(dp.samplesB);
    }

    memcpy(dppi->samplesA, dp.samplesA, sizeof(dp.samplesA));
    memcpy(dppi->samplesB, dp.samplesB, sizeof(dp.samplesB));
    dppi->weightA = dp.weightA;
    dppi->weightB = dp.weightB;

    if (delta == 0) {
        dp.delta = 1;
        decorr_stereo(in_left, in_right, out_left, out_right, nb_samples, &dp, 1);
        dp.delta = 0;
        memcpy(dp.samplesA, dppi->samplesA, sizeof(dp.samplesA));
        memcpy(dp.samplesB, dppi->samplesB, sizeof(dp.samplesB));
        dppi->weightA = dp.weightA = dp.sumA / nb_samples;
        dppi->weightB = dp.weightB = dp.sumB / nb_samples;
    }

    if (info->gt16bit)
        decorr_stereo(in_left, in_right, out_left, out_right,
                           nb_samples, &dp, 1);
    else
        decorr_stereo_quick(in_left, in_right, out_left, out_right,
                            nb_samples, &dp);
}
