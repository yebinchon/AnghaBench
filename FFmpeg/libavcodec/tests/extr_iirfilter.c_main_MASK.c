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
struct FFIIRFilterState {int dummy; } ;
struct FFIIRFilterCoeffs {int dummy; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FF_FILTER_MODE_LOWPASS ; 
 int /*<<< orphan*/  FF_FILTER_TYPE_BUTTERWORTH ; 
 int /*<<< orphan*/  FILT_ORDER ; 
 double INT16_MAX ; 
 double M_PI ; 
 int SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct FFIIRFilterCoeffs*,struct FFIIRFilterState*,int,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FFIIRFilterCoeffs**) ; 
 int /*<<< orphan*/  FUNC2 (struct FFIIRFilterState**) ; 
 struct FFIIRFilterCoeffs* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,double,double) ; 
 struct FFIIRFilterState* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 double FUNC7 (double) ; 

int FUNC8(void)
{
    struct FFIIRFilterCoeffs *fcoeffs = NULL;
    struct FFIIRFilterState  *fstate  = NULL;
    float cutoff_coeff = 0.4;
    int16_t x[SIZE], y[SIZE];
    int i;

    fcoeffs = FUNC3(NULL, FF_FILTER_TYPE_BUTTERWORTH,
                                        FF_FILTER_MODE_LOWPASS, FILT_ORDER,
                                        cutoff_coeff, 0.0, 0.0);
    fstate  = FUNC4(FILT_ORDER);

    for (i = 0; i < SIZE; i++)
        x[i] = FUNC5(0.75 * INT16_MAX * FUNC7(0.5 * M_PI * i * i / SIZE));

    FUNC0(fcoeffs, fstate, SIZE, x, 1, y, 1);

    for (i = 0; i < SIZE; i++)
        FUNC6("%6d %6d\n", x[i], y[i]);

    FUNC1(&fcoeffs);
    FUNC2(&fstate);
    return 0;
}