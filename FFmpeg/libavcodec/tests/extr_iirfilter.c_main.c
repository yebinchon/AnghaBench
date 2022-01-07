
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FFIIRFilterState {int dummy; } ;
struct FFIIRFilterCoeffs {int dummy; } ;
typedef int int16_t ;


 int FF_FILTER_MODE_LOWPASS ;
 int FF_FILTER_TYPE_BUTTERWORTH ;
 int FILT_ORDER ;
 double INT16_MAX ;
 double M_PI ;
 int SIZE ;
 int ff_iir_filter (struct FFIIRFilterCoeffs*,struct FFIIRFilterState*,int,int*,int,int*,int) ;
 int ff_iir_filter_free_coeffsp (struct FFIIRFilterCoeffs**) ;
 int ff_iir_filter_free_statep (struct FFIIRFilterState**) ;
 struct FFIIRFilterCoeffs* ff_iir_filter_init_coeffs (int *,int ,int ,int ,float,double,double) ;
 struct FFIIRFilterState* ff_iir_filter_init_state (int ) ;
 int lrint (double) ;
 int printf (char*,int,int) ;
 double sin (double) ;

int main(void)
{
    struct FFIIRFilterCoeffs *fcoeffs = ((void*)0);
    struct FFIIRFilterState *fstate = ((void*)0);
    float cutoff_coeff = 0.4;
    int16_t x[SIZE], y[SIZE];
    int i;

    fcoeffs = ff_iir_filter_init_coeffs(((void*)0), FF_FILTER_TYPE_BUTTERWORTH,
                                        FF_FILTER_MODE_LOWPASS, FILT_ORDER,
                                        cutoff_coeff, 0.0, 0.0);
    fstate = ff_iir_filter_init_state(FILT_ORDER);

    for (i = 0; i < SIZE; i++)
        x[i] = lrint(0.75 * INT16_MAX * sin(0.5 * M_PI * i * i / SIZE));

    ff_iir_filter(fcoeffs, fstate, SIZE, x, 1, y, 1);

    for (i = 0; i < SIZE; i++)
        printf("%6d %6d\n", x[i], y[i]);

    ff_iir_filter_free_coeffsp(&fcoeffs);
    ff_iir_filter_free_statep(&fstate);
    return 0;
}
