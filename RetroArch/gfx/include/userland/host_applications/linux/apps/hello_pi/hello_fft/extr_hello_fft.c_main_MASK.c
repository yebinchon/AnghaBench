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
struct GPU_FFT_COMPLEX {double re; double im; } ;
struct GPU_FFT {int step; struct GPU_FFT_COMPLEX* out; struct GPU_FFT_COMPLEX* in; } ;

/* Variables and functions */
 int GPU_FFT_PI ; 
 int /*<<< orphan*/  GPU_FFT_REV ; 
 unsigned int FUNC0 () ; 
 char* Usage ; 
 int FUNC1 (char*) ; 
 double FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct GPU_FFT*) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int,struct GPU_FFT**) ; 
 int /*<<< orphan*/  FUNC5 (struct GPU_FFT*) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (double,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 double FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(int argc, char *argv[]) {
    int i, j, k, ret, loops, freq, log2_N, jobs, N, mb = FUNC6();
    unsigned t[2];
    double tsq[2];

    struct GPU_FFT_COMPLEX *base;
    struct GPU_FFT *fft;

    log2_N = argc>1? FUNC1(argv[1]) : 12; // 8 <= log2_N <= 22
    jobs   = argc>2? FUNC1(argv[2]) : 1;  // transforms per batch
    loops  = argc>3? FUNC1(argv[3]) : 1;  // test repetitions

    if (argc<2 || jobs<1 || loops<1) {
        FUNC8(Usage);
        return -1;
    }

    N = 1<<log2_N; // FFT length
    ret = FUNC4(mb, log2_N, GPU_FFT_REV, jobs, &fft); // call once

    switch(ret) {
        case -1: FUNC8("Unable to enable V3D. Please check your firmware is up to date.\n"); return -1;
        case -2: FUNC8("log2_N=%d not supported.  Try between 8 and 22.\n", log2_N);         return -1;
        case -3: FUNC8("Out of memory.  Try a smaller batch or increase GPU memory.\n");     return -1;
        case -4: FUNC8("Unable to map Videocore peripherals into ARM memory space.\n");      return -1;
        case -5: FUNC8("Can't open libbcm_host.\n");                                         return -1;
    }

    for (k=0; k<loops; k++) {

        for (j=0; j<jobs; j++) {
            base = fft->in + j*fft->step; // input buffer
            for (i=0; i<N; i++) base[i].re = base[i].im = 0;
            freq = j+1;
            base[freq].re = base[N-freq].re = 0.5;
        }

        FUNC10(1); // Yield to OS
        t[0] = FUNC0();
        FUNC3(fft); // call one or many times
        t[1] = FUNC0();

        tsq[0]=tsq[1]=0;
        for (j=0; j<jobs; j++) {
            base = fft->out + j*fft->step; // output buffer
            freq = j+1;
            for (i=0; i<N; i++) {
                double re = FUNC2(2*GPU_FFT_PI*freq*i/N);
                tsq[0] += FUNC7(re, 2);
                tsq[1] += FUNC7(re - base[i].re, 2) + FUNC7(base[i].im, 2);
            }
        }

        FUNC8("rel_rms_err = %0.2g, usecs = %d, k = %d\n",
            FUNC9(tsq[1]/tsq[0]), (t[1]-t[0])/jobs, k);
    }

    FUNC5(fft); // Videocore memory lost if not freed !
    return 0;
}