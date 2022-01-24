#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
struct TYPE_11__ {scalar_t__ im; scalar_t__ re; } ;
typedef  TYPE_1__ FFTComplex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(FFTComplex *out, FFTComplex *in, FFTComplex *exptab, ptrdiff_t stride)
{
    int k;
    FFTComplex tmp1[5], tmp2[5], tmp3[5];

    FUNC1(tmp1, in + 0, exptab + 19);
    FUNC1(tmp2, in + 1, exptab + 19);
    FUNC1(tmp3, in + 2, exptab + 19);

    for (k = 0; k < 5; k++) {
        FFTComplex t[2];

        FUNC0(t[0], tmp2[k], exptab[k]);
        FUNC0(t[1], tmp3[k], exptab[2 * k]);
        out[stride*k].re = tmp1[k].re + t[0].re + t[1].re;
        out[stride*k].im = tmp1[k].im + t[0].im + t[1].im;

        FUNC0(t[0], tmp2[k], exptab[k + 5]);
        FUNC0(t[1], tmp3[k], exptab[2 * (k + 5)]);
        out[stride*(k + 5)].re = tmp1[k].re + t[0].re + t[1].re;
        out[stride*(k + 5)].im = tmp1[k].im + t[0].im + t[1].im;

        FUNC0(t[0], tmp2[k], exptab[k + 10]);
        FUNC0(t[1], tmp3[k], exptab[2 * k + 5]);
        out[stride*(k + 10)].re = tmp1[k].re + t[0].re + t[1].re;
        out[stride*(k + 10)].im = tmp1[k].im + t[0].im + t[1].im;
    }
}