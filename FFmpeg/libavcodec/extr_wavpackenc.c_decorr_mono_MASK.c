#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Decorr {int* samplesA; int value; scalar_t__ weightA; scalar_t__ sumA; int /*<<< orphan*/  delta; } ;
typedef  void* int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,void*) ; 
 int MAX_TERM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void**,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int32_t *in_samples, int32_t *out_samples,
                        int nb_samples, struct Decorr *dpp, int dir)
{
    int m = 0, i;

    dpp->sumA = 0;

    if (dir < 0) {
        out_samples += (nb_samples - 1);
        in_samples  += (nb_samples - 1);
    }

    dpp->weightA = FUNC4(FUNC5(dpp->weightA));

    for (i = 0; i < MAX_TERM; i++)
        dpp->samplesA[i] = FUNC6(FUNC2(dpp->samplesA[i]));

    if (dpp->value > MAX_TERM) {
        while (nb_samples--) {
            int32_t left, sam_A;

            sam_A = ((3 - (dpp->value & 1)) * dpp->samplesA[0] - dpp->samplesA[1]) >> !(dpp->value & 1);

            dpp->samplesA[1] = dpp->samplesA[0];
            dpp->samplesA[0] = left = in_samples[0];

            left -= FUNC0(dpp->weightA, sam_A);
            FUNC1(dpp->weightA, dpp->delta, sam_A, left);
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

            left -= FUNC0(dpp->weightA, sam_A);
            FUNC1(dpp->weightA, dpp->delta, sam_A, left);
            dpp->sumA += dpp->weightA;
            out_samples[0] = left;
            in_samples += dir;
            out_samples += dir;
        }
    }

    if (m && dpp->value > 0 && dpp->value <= MAX_TERM) {
        int32_t temp_A[MAX_TERM];

        FUNC3(temp_A, dpp->samplesA, sizeof(dpp->samplesA));

        for (i = 0; i < MAX_TERM; i++) {
            dpp->samplesA[i] = temp_A[m];
            m = (m + 1) & (MAX_TERM - 1);
        }
    }
}