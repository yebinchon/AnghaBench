#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; int /*<<< orphan*/  gain; int /*<<< orphan*/  width; int /*<<< orphan*/  freq; } ;
typedef  TYPE_1__ EqualizatorFilter ;

/* Variables and functions */
#define  BUTTERWORTH 130 
#define  CHEBYSHEV1 129 
#define  CHEBYSHEV2 128 
 int /*<<< orphan*/  FILTER_ORDER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,double,double,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,double,double,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,double,double,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ,double) ; 

__attribute__((used)) static void FUNC7(EqualizatorFilter *f, double sample_rate)
{
    double w0 = FUNC6(f->freq,  sample_rate);
    double wb = FUNC6(f->width, sample_rate);
    double bw_gain;

    switch (f->type) {
    case BUTTERWORTH:
        bw_gain = FUNC1(f->gain);
        FUNC0(f, FILTER_ORDER, w0, wb, f->gain, bw_gain, 0);
        break;
    case CHEBYSHEV1:
        bw_gain = FUNC3(f->gain);
        FUNC2(f, FILTER_ORDER, w0, wb, f->gain, bw_gain, 0);
        break;
    case CHEBYSHEV2:
        bw_gain = FUNC5(f->gain);
        FUNC4(f, FILTER_ORDER, w0, wb, f->gain, bw_gain, 0);
        break;
    }

}