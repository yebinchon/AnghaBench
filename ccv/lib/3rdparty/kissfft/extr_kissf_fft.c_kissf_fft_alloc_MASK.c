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
struct kissf_fft_state {int dummy; } ;
typedef  int /*<<< orphan*/  kissf_fft_cpx ;
typedef  TYPE_1__* kissf_fft_cfg ;
struct TYPE_3__ {int nfft; int inverse; int /*<<< orphan*/  factors; scalar_t__ twiddles; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

kissf_fft_cfg FUNC3(int nfft,int inverse_fft,void * mem,size_t * lenmem )
{
    kissf_fft_cfg st=NULL;
    size_t memneeded = sizeof(struct kissf_fft_state)
        + sizeof(kissf_fft_cpx)*(nfft-1); /* twiddle factors*/

    if ( lenmem==NULL ) {
        st = ( kissf_fft_cfg)FUNC0( memneeded );
    }else{
        if (mem != NULL && *lenmem >= memneeded)
            st = (kissf_fft_cfg)mem;
        *lenmem = memneeded;
    }
    if (st) {
        int i;
        st->nfft=nfft;
        st->inverse = inverse_fft;

        for (i=0;i<nfft;++i) {
            const double pi=3.141592653589793238462643383279502884197169399375105820974944;
            double phase = -2*pi*i / nfft;
            if (st->inverse)
                phase *= -1;
            FUNC1(st->twiddles+i, phase );
        }

        FUNC2(nfft,st->factors);
    }
    return st;
}