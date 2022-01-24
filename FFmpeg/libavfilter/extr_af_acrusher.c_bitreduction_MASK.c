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
struct TYPE_3__ {double sqr; double coeff; double aa; double aa1; int mode; double mix; int /*<<< orphan*/  idc; int /*<<< orphan*/  dc; } ;
typedef  TYPE_1__ ACrusherContext ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double,double,double const,double const) ; 
 double const FUNC5 (double) ; 
 double FUNC6 (double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC7 (double) ; 

__attribute__((used)) static double FUNC8(ACrusherContext *s, double in)
{
    const double sqr = s->sqr;
    const double coeff = s->coeff;
    const double aa = s->aa;
    const double aa1 = s->aa1;
    double y, k;

    // add dc
    in = FUNC1(in, s->dc, s->idc);

    // main rounding calculation depending on mode

    // the idea for anti-aliasing:
    // you need a function f which brings you to the scale, where
    // you want to round and the function f_b (with f(f_b)=id) which
    // brings you back to your original scale.
    //
    // then you can use the logic below in the following way:
    // y = f(in) and k = roundf(y)
    // if (y > k + aa1)
    //      k = f_b(k) + ( f_b(k+1) - f_b(k) ) * 0.5 * (sin(x - PI/2) + 1)
    // if (y < k + aa1)
    //      k = f_b(k) - ( f_b(k+1) - f_b(k) ) * 0.5 * (sin(x - PI/2) + 1)
    //
    // whereas x = (fabs(f(in) - k) - aa1) * PI / aa
    // for both cases.

    switch (s->mode) {
    case 0:
    default:
        // linear
        y = in * coeff;
        k = FUNC7(y);
        if (k - aa1 <= y && y <= k + aa1) {
            k /= coeff;
        } else if (y > k + aa1) {
            k = k / coeff + ((k + 1) / coeff - k / coeff) *
                FUNC4(y, k, aa1, aa);
        } else {
            k = k / coeff - (k / coeff - (k - 1) / coeff) *
                FUNC4(y, k, aa1, aa);
        }
        break;
    case 1:
        // logarithmic
        y = sqr * FUNC5(FUNC3(in)) + sqr * sqr;
        k = FUNC7(y);
        if(!in) {
            k = 0;
        } else if (k - aa1 <= y && y <= k + aa1) {
            k = in / FUNC3(in) * FUNC2(k / sqr - sqr);
        } else if (y > k + aa1) {
            double x = FUNC2(k / sqr - sqr);
            k = FUNC0(in) * (x + (FUNC2((k + 1) / sqr - sqr) - x) *
                FUNC4(y, k, aa1, aa));
        } else {
            double x = FUNC2(k / sqr - sqr);
            k = in / FUNC3(in) * (x - (x - FUNC2((k - 1) / sqr - sqr)) *
                FUNC4(y, k, aa1, aa));
        }
        break;
    }

    // mix between dry and wet signal
    k += (in - k) * s->mix;

    // remove dc
    k = FUNC6(k, s->dc, s->idc);

    return k;
}