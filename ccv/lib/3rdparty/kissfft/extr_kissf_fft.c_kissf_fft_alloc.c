
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kissf_fft_state {int dummy; } ;
typedef int kissf_fft_cpx ;
typedef TYPE_1__* kissf_fft_cfg ;
struct TYPE_3__ {int nfft; int inverse; int factors; scalar_t__ twiddles; } ;


 scalar_t__ KISSF_FFT_MALLOC (size_t) ;
 int kf_cexp (scalar_t__,double) ;
 int kf_factor (int,int ) ;

kissf_fft_cfg kissf_fft_alloc(int nfft,int inverse_fft,void * mem,size_t * lenmem )
{
    kissf_fft_cfg st=((void*)0);
    size_t memneeded = sizeof(struct kissf_fft_state)
        + sizeof(kissf_fft_cpx)*(nfft-1);

    if ( lenmem==((void*)0) ) {
        st = ( kissf_fft_cfg)KISSF_FFT_MALLOC( memneeded );
    }else{
        if (mem != ((void*)0) && *lenmem >= memneeded)
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
            kf_cexp(st->twiddles+i, phase );
        }

        kf_factor(nfft,st->factors);
    }
    return st;
}
