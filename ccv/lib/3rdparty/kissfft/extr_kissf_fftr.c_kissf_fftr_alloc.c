
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kissf_fftr_state {int dummy; } ;
typedef TYPE_1__* kissf_fftr_cfg ;
typedef int kissf_fft_cpx ;
typedef int * kissf_fft_cfg ;
struct TYPE_3__ {int * super_twiddles; int * substate; int * tmpbuf; } ;


 scalar_t__ KISSF_FFT_MALLOC (size_t) ;
 int fprintf (int ,char*) ;
 int kf_cexp (int *,double) ;
 int kissf_fft_alloc (int,int,int *,size_t*) ;
 int stderr ;

kissf_fftr_cfg kissf_fftr_alloc(int nfft,int inverse_fft,void * mem,size_t * lenmem)
{
    int i;
    kissf_fftr_cfg st = ((void*)0);
    size_t subsize, memneeded;

    if (nfft & 1) {
        fprintf(stderr,"Real FFT optimization must be even.\n");
        return ((void*)0);
    }
    nfft >>= 1;

    kissf_fft_alloc (nfft, inverse_fft, ((void*)0), &subsize);
    memneeded = sizeof(struct kissf_fftr_state) + subsize + sizeof(kissf_fft_cpx) * ( nfft * 3 / 2);

    if (lenmem == ((void*)0)) {
        st = (kissf_fftr_cfg) KISSF_FFT_MALLOC (memneeded);
    } else {
        if (*lenmem >= memneeded)
            st = (kissf_fftr_cfg) mem;
        *lenmem = memneeded;
    }
    if (!st)
        return ((void*)0);

    st->substate = (kissf_fft_cfg) (st + 1);
    st->tmpbuf = (kissf_fft_cpx *) (((char *) st->substate) + subsize);
    st->super_twiddles = st->tmpbuf + nfft;
    kissf_fft_alloc(nfft, inverse_fft, st->substate, &subsize);

    for (i = 0; i < nfft/2; ++i) {
        double phase =
            -3.14159265358979323846264338327 * ((double) (i+1) / nfft + .5);
        if (inverse_fft)
            phase *= -1;
        kf_cexp (st->super_twiddles+i,phase);
    }
    return st;
}
