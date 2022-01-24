#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kissf_fftr_cfg ;
typedef  int /*<<< orphan*/  kissf_fft_scalar ;
struct TYPE_18__ {int r; int i; } ;
typedef  TYPE_2__ kissf_fft_cpx ;
struct TYPE_19__ {scalar_t__ inverse; int nfft; } ;
struct TYPE_17__ {TYPE_2__* tmpbuf; TYPE_5__* substate; int /*<<< orphan*/ * super_twiddles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__,TYPE_2__,TYPE_2__) ; 
 int FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(kissf_fftr_cfg st,const kissf_fft_cpx *freqdata,kissf_fft_scalar *timedata)
{
    /* input buffer timedata is stored row-wise */
    int k, ncfft;

    if (st->substate->inverse == 0) {
        FUNC6 (stderr, "kiss fft usage error: improper alloc\n");
        FUNC5 (1);
    }

    ncfft = st->substate->nfft;

    st->tmpbuf[0].r = freqdata[0].r + freqdata[ncfft].r;
    st->tmpbuf[0].i = freqdata[0].r - freqdata[ncfft].r;
    FUNC1(st->tmpbuf[0],2);

    for (k = 1; k <= ncfft / 2; ++k) {
        kissf_fft_cpx fk, fnkc, fek, fok, tmp;
        fk = freqdata[k];
        fnkc.r = freqdata[ncfft - k].r;
        fnkc.i = -freqdata[ncfft - k].i;
        FUNC1( fk , 2 );
        FUNC1( fnkc , 2 );

        FUNC0 (fek, fk, fnkc);
        FUNC3 (tmp, fk, fnkc);
        FUNC2 (fok, tmp, st->super_twiddles[k-1]);
        FUNC0 (st->tmpbuf[k],     fek, fok);
        FUNC3 (st->tmpbuf[ncfft - k], fek, fok);
#ifdef USE_SIMD        
        st->tmpbuf[ncfft - k].i *= _mm_set1_ps(-1.0);
#else
        st->tmpbuf[ncfft - k].i *= -1;
#endif
    }
    FUNC7 (st->substate, st->tmpbuf, (kissf_fft_cpx *) timedata);
}