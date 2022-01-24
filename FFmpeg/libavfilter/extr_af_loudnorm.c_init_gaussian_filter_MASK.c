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
struct TYPE_3__ {double* weights; } ;
typedef  TYPE_1__ LoudNormContext ;

/* Variables and functions */
 double M_PI ; 
 double const FUNC0 (double const) ; 
 double const FUNC1 (int const,double) ; 
 double const FUNC2 (double) ; 

__attribute__((used)) static void FUNC3(LoudNormContext *s)
{
    double total_weight = 0.0;
    const double sigma = 3.5;
    double adjust;
    int i;

    const int offset = 21 / 2;
    const double c1 = 1.0 / (sigma * FUNC2(2.0 * M_PI));
    const double c2 = 2.0 * FUNC1(sigma, 2.0);

    for (i = 0; i < 21; i++) {
        const int x = i - offset;
        s->weights[i] = c1 * FUNC0(-(FUNC1(x, 2.0) / c2));
        total_weight += s->weights[i];
    }

    adjust = 1.0 / total_weight;
    for (i = 0; i < 21; i++)
        s->weights[i] *= adjust;
}