
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Decorr {int* samplesA; int value; scalar_t__ weightA; scalar_t__ sumA; int delta; } ;
typedef void* int32_t ;


 scalar_t__ APPLY_WEIGHT (scalar_t__,void*) ;
 int MAX_TERM ;
 int UPDATE_WEIGHT (scalar_t__,int ,void*,void*) ;
 int log2s (int) ;
 int memcpy (void**,int*,int) ;
 scalar_t__ restore_weight (int ) ;
 int store_weight (scalar_t__) ;
 int wp_exp2 (int ) ;

__attribute__((used)) static void decorr_mono(int32_t *in_samples, int32_t *out_samples,
                        int nb_samples, struct Decorr *dpp, int dir)
{
    int m = 0, i;

    dpp->sumA = 0;

    if (dir < 0) {
        out_samples += (nb_samples - 1);
        in_samples += (nb_samples - 1);
    }

    dpp->weightA = restore_weight(store_weight(dpp->weightA));

    for (i = 0; i < MAX_TERM; i++)
        dpp->samplesA[i] = wp_exp2(log2s(dpp->samplesA[i]));

    if (dpp->value > MAX_TERM) {
        while (nb_samples--) {
            int32_t left, sam_A;

            sam_A = ((3 - (dpp->value & 1)) * dpp->samplesA[0] - dpp->samplesA[1]) >> !(dpp->value & 1);

            dpp->samplesA[1] = dpp->samplesA[0];
            dpp->samplesA[0] = left = in_samples[0];

            left -= APPLY_WEIGHT(dpp->weightA, sam_A);
            UPDATE_WEIGHT(dpp->weightA, dpp->delta, sam_A, left);
            dpp->sumA += dpp->weightA;
            out_samples[0] = left;
            in_samples += dir;
            out_samples += dir;
        }
    } else if (dpp->value > 0) {
        while (nb_samples--) {
            int k = (m + dpp->value) & (MAX_TERM - 1);
            int32_t left, sam_A;

            sam_A = dpp->samplesA[m];
            dpp->samplesA[k] = left = in_samples[0];
            m = (m + 1) & (MAX_TERM - 1);

            left -= APPLY_WEIGHT(dpp->weightA, sam_A);
            UPDATE_WEIGHT(dpp->weightA, dpp->delta, sam_A, left);
            dpp->sumA += dpp->weightA;
            out_samples[0] = left;
            in_samples += dir;
            out_samples += dir;
        }
    }

    if (m && dpp->value > 0 && dpp->value <= MAX_TERM) {
        int32_t temp_A[MAX_TERM];

        memcpy(temp_A, dpp->samplesA, sizeof(dpp->samplesA));

        for (i = 0; i < MAX_TERM; i++) {
            dpp->samplesA[i] = temp_A[m];
            m = (m + 1) & (MAX_TERM - 1);
        }
    }
}
