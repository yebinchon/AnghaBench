#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double param; int type; } ;
typedef  TYPE_1__ ASoftClipContext ;

/* Variables and functions */
#define  ASC_ALG 134 
#define  ASC_ATAN 133 
#define  ASC_CUBIC 132 
#define  ASC_EXP 131 
#define  ASC_QUINTIC 130 
#define  ASC_SIN 129 
#define  ASC_TANH 128 
 double FUNC0 (double const) ; 
 double FUNC1 (double const) ; 
 int M_PI ; 
 double M_PI_2 ; 
 int FUNC2 (double const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 double FUNC4 (double const,int) ; 
 double FUNC5 (double const) ; 
 double const FUNC6 (double) ; 
 double FUNC7 (double const) ; 

__attribute__((used)) static void FUNC8(ASoftClipContext *s,
                       void **dptr, const void **sptr,
                       int nb_samples, int channels)
{
    double param = s->param;

    for (int c = 0; c < channels; c++) {
        const double *src = sptr[c];
        double *dst = dptr[c];

        switch (s->type) {
        case ASC_TANH:
            for (int n = 0; n < nb_samples; n++) {
                dst[n] = FUNC7(src[n] * param);
            }
            break;
        case ASC_ATAN:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = 2. / M_PI * FUNC2(src[n] * param);
            break;
        case ASC_CUBIC:
            for (int n = 0; n < nb_samples; n++) {
                if (FUNC0(src[n]) >= 1.5)
                    dst[n] = FUNC1(src[n]);
                else
                    dst[n] = src[n] - 0.1481 * FUNC4(src[n], 3.);
            }
            break;
        case ASC_EXP:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = 2. / (1. + FUNC3(-2. * src[n])) - 1.;
            break;
        case ASC_ALG:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = src[n] / (FUNC6(param + src[n] * src[n]));
            break;
        case ASC_QUINTIC:
            for (int n = 0; n < nb_samples; n++) {
                if (FUNC0(src[n]) >= 1.25)
                    dst[n] = FUNC1(src[n]);
                else
                    dst[n] = src[n] - 0.08192 * FUNC4(src[n], 5.);
            }
            break;
        case ASC_SIN:
            for (int n = 0; n < nb_samples; n++) {
                if (FUNC0(src[n]) >= M_PI_2)
                    dst[n] = FUNC1(src[n]);
                else
                    dst[n] = FUNC5(src[n]);
            }
            break;
        }
    }
}