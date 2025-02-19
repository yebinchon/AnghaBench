
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Decorr {int value; int* samplesA; } ;
typedef void* int32_t ;


 int MAX_TERM ;

__attribute__((used)) static void reverse_mono_decorr(struct Decorr *dpp)
{
    if (dpp->value > MAX_TERM) {
        int32_t sam_A;

        if (dpp->value & 1)
            sam_A = 2 * dpp->samplesA[0] - dpp->samplesA[1];
        else
            sam_A = (3 * dpp->samplesA[0] - dpp->samplesA[1]) >> 1;

        dpp->samplesA[1] = dpp->samplesA[0];
        dpp->samplesA[0] = sam_A;

        if (dpp->value & 1)
            sam_A = 2 * dpp->samplesA[0] - dpp->samplesA[1];
        else
            sam_A = (3 * dpp->samplesA[0] - dpp->samplesA[1]) >> 1;

        dpp->samplesA[1] = sam_A;
    } else if (dpp->value > 1) {
        int i, j, k;

        for (i = 0, j = dpp->value - 1, k = 0; k < dpp->value / 2; i++, j--, k++) {
            i &= (MAX_TERM - 1);
            j &= (MAX_TERM - 1);
            dpp->samplesA[i] ^= dpp->samplesA[j];
            dpp->samplesA[j] ^= dpp->samplesA[i];
            dpp->samplesA[i] ^= dpp->samplesA[j];
        }
    }
}
