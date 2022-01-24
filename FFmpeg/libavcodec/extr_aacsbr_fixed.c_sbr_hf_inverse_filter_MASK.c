#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_20__ {int /*<<< orphan*/  (* autocorrelate ) (int const**,TYPE_1__***) ;} ;
struct TYPE_19__ {int mant; int exp; } ;
typedef  TYPE_1__ SoftFloat ;
typedef  TYPE_2__ SBRDSPContext ;

/* Variables and functions */
 TYPE_1__ FLOAT_0 ; 
 TYPE_1__ FLOAT_0999999 ; 
 TYPE_1__ FUNC0 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int const**,TYPE_1__***) ; 

__attribute__((used)) static void FUNC5(SBRDSPContext *dsp,
                                  int (*alpha0)[2], int (*alpha1)[2],
                                  const int X_low[32][40][2], int k0)
{
    int k;
    int shift, round;

    for (k = 0; k < k0; k++) {
        SoftFloat phi[3][2][2];
        SoftFloat a00, a01, a10, a11;
        SoftFloat dk;

        dsp->autocorrelate(X_low[k], phi);

        dk = FUNC3(FUNC2(phi[2][1][0], phi[1][0][0]),
             FUNC2(FUNC0(FUNC2(phi[1][1][0], phi[1][1][0]),
             FUNC2(phi[1][1][1], phi[1][1][1])), FLOAT_0999999));

        if (!dk.mant) {
            a10 = FLOAT_0;
            a11 = FLOAT_0;
        } else {
            SoftFloat temp_real, temp_im;
            temp_real = FUNC3(FUNC3(FUNC2(phi[0][0][0], phi[1][1][0]),
                                            FUNC2(phi[0][0][1], phi[1][1][1])),
                                  FUNC2(phi[0][1][0], phi[1][0][0]));
            temp_im   = FUNC3(FUNC0(FUNC2(phi[0][0][0], phi[1][1][1]),
                                            FUNC2(phi[0][0][1], phi[1][1][0])),
                                  FUNC2(phi[0][1][1], phi[1][0][0]));

            a10 = FUNC1(temp_real, dk);
            a11 = FUNC1(temp_im,   dk);
        }

        if (!phi[1][0][0].mant) {
            a00 = FLOAT_0;
            a01 = FLOAT_0;
        } else {
            SoftFloat temp_real, temp_im;
            temp_real = FUNC0(phi[0][0][0],
                                  FUNC0(FUNC2(a10, phi[1][1][0]),
                                            FUNC2(a11, phi[1][1][1])));
            temp_im   = FUNC0(phi[0][0][1],
                                  FUNC3(FUNC2(a11, phi[1][1][0]),
                                            FUNC2(a10, phi[1][1][1])));

            temp_real.mant = -temp_real.mant;
            temp_im.mant   = -temp_im.mant;
            a00 = FUNC1(temp_real, phi[1][0][0]);
            a01 = FUNC1(temp_im,   phi[1][0][0]);
        }

        shift = a00.exp;
        if (shift >= 3)
            alpha0[k][0] = 0x7fffffff;
        else if (shift <= -30)
            alpha0[k][0] = 0;
        else {
            shift = 1-shift;
            if (shift <= 0)
                alpha0[k][0] = a00.mant * (1<<-shift);
            else {
                round = 1 << (shift-1);
                alpha0[k][0] = (a00.mant + round) >> shift;
            }
        }

        shift = a01.exp;
        if (shift >= 3)
            alpha0[k][1] = 0x7fffffff;
        else if (shift <= -30)
            alpha0[k][1] = 0;
        else {
            shift = 1-shift;
            if (shift <= 0)
                alpha0[k][1] = a01.mant * (1<<-shift);
            else {
                round = 1 << (shift-1);
                alpha0[k][1] = (a01.mant + round) >> shift;
            }
        }
        shift = a10.exp;
        if (shift >= 3)
            alpha1[k][0] = 0x7fffffff;
        else if (shift <= -30)
            alpha1[k][0] = 0;
        else {
            shift = 1-shift;
            if (shift <= 0)
                alpha1[k][0] = a10.mant * (1<<-shift);
            else {
                round = 1 << (shift-1);
                alpha1[k][0] = (a10.mant + round) >> shift;
            }
        }

        shift = a11.exp;
        if (shift >= 3)
            alpha1[k][1] = 0x7fffffff;
        else if (shift <= -30)
            alpha1[k][1] = 0;
        else {
            shift = 1-shift;
            if (shift <= 0)
                alpha1[k][1] = a11.mant * (1<<-shift);
            else {
                round = 1 << (shift-1);
                alpha1[k][1] = (a11.mant + round) >> shift;
            }
        }

        shift = (int)(((int64_t)(alpha1[k][0]>>1) * (alpha1[k][0]>>1) + \
                       (int64_t)(alpha1[k][1]>>1) * (alpha1[k][1]>>1) + \
                       0x40000000) >> 31);
        if (shift >= 0x20000000){
            alpha1[k][0] = 0;
            alpha1[k][1] = 0;
            alpha0[k][0] = 0;
            alpha0[k][1] = 0;
        }

        shift = (int)(((int64_t)(alpha0[k][0]>>1) * (alpha0[k][0]>>1) + \
                       (int64_t)(alpha0[k][1]>>1) * (alpha0[k][1]>>1) + \
                       0x40000000) >> 31);
        if (shift >= 0x20000000){
            alpha1[k][0] = 0;
            alpha1[k][1] = 0;
            alpha0[k][0] = 0;
            alpha0[k][1] = 0;
        }
    }
}