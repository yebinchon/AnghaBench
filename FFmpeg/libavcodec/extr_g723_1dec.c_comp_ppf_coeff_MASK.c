#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
typedef  enum Rate { ____Placeholder_Rate } Rate ;
struct TYPE_7__ {int* audio; } ;
struct TYPE_6__ {int sc_gain; scalar_t__ opt_gain; scalar_t__ index; } ;
typedef  TYPE_1__ PPFParam ;
typedef  TYPE_2__ G723_1_ChannelContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int LPC_ORDER ; 
 int /*<<< orphan*/  SUBFRAME_LEN ; 
 int FUNC1 (int*,int,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,int,int,int,int) ; 
 int FUNC3 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(G723_1_ChannelContext *p, int offset, int pitch_lag,
                           PPFParam *ppf, enum Rate cur_rate)
{

    int16_t scale;
    int i;
    int temp1, temp2;

    /*
     * 0 - target energy
     * 1 - forward cross-correlation
     * 2 - forward residual energy
     * 3 - backward cross-correlation
     * 4 - backward residual energy
     */
    int energy[5] = {0, 0, 0, 0, 0};
    int16_t *buf  = p->audio + LPC_ORDER + offset;
    int fwd_lag   = FUNC1(buf, offset, &energy[1], pitch_lag,
                                 SUBFRAME_LEN, 1);
    int back_lag  = FUNC1(buf, offset, &energy[3], pitch_lag,
                                 SUBFRAME_LEN, -1);

    ppf->index    = 0;
    ppf->opt_gain = 0;
    ppf->sc_gain  = 0x7fff;

    /* Case 0, Section 3.6 */
    if (!back_lag && !fwd_lag)
        return;

    /* Compute target energy */
    energy[0] = FUNC3(buf, buf, SUBFRAME_LEN);

    /* Compute forward residual energy */
    if (fwd_lag)
        energy[2] = FUNC3(buf + fwd_lag, buf + fwd_lag,
                                          SUBFRAME_LEN);

    /* Compute backward residual energy */
    if (back_lag)
        energy[4] = FUNC3(buf - back_lag, buf - back_lag,
                                          SUBFRAME_LEN);

    /* Normalize and shorten */
    temp1 = 0;
    for (i = 0; i < 5; i++)
        temp1 = FUNC0(energy[i], temp1);

    scale = FUNC4(temp1, 31);
    for (i = 0; i < 5; i++)
        energy[i] = (energy[i] << scale) >> 16;

    if (fwd_lag && !back_lag) {  /* Case 1 */
        FUNC2(fwd_lag,  ppf, cur_rate, energy[0], energy[1],
                       energy[2]);
    } else if (!fwd_lag) {       /* Case 2 */
        FUNC2(-back_lag, ppf, cur_rate, energy[0], energy[3],
                       energy[4]);
    } else {                     /* Case 3 */

        /*
         * Select the largest of energy[1]^2/energy[2]
         * and energy[3]^2/energy[4]
         */
        temp1 = energy[4] * ((energy[1] * energy[1] + (1 << 14)) >> 15);
        temp2 = energy[2] * ((energy[3] * energy[3] + (1 << 14)) >> 15);
        if (temp1 >= temp2) {
            FUNC2(fwd_lag, ppf, cur_rate, energy[0], energy[1],
                           energy[2]);
        } else {
            FUNC2(-back_lag, ppf, cur_rate, energy[0], energy[3],
                           energy[4]);
        }
    }
}