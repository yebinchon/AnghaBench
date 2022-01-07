
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kissf_fft_cpx ;
typedef TYPE_1__* kissf_fft_cfg ;
struct TYPE_3__ {int nfft; int * twiddles; } ;


 int C_ADDTO (int ,int ) ;
 int C_FIXDIV (int ,int) ;
 int C_MUL (int ,int ,int ) ;
 scalar_t__ KISSF_FFT_TMP_ALLOC (int) ;
 int KISSF_FFT_TMP_FREE (int *) ;

__attribute__((used)) static void kf_bfly_generic(
        kissf_fft_cpx * Fout,
        const size_t fstride,
        const kissf_fft_cfg st,
        int m,
        int p
        )
{
    int u,k,q1,q;
    kissf_fft_cpx * twiddles = st->twiddles;
    kissf_fft_cpx t;
    int Norig = st->nfft;

    kissf_fft_cpx * scratch = (kissf_fft_cpx*)KISSF_FFT_TMP_ALLOC(sizeof(kissf_fft_cpx)*p);

    for ( u=0; u<m; ++u ) {
        k=u;
        for ( q1=0 ; q1<p ; ++q1 ) {
            scratch[q1] = Fout[ k ];
            C_FIXDIV(scratch[q1],p);
            k += m;
        }

        k=u;
        for ( q1=0 ; q1<p ; ++q1 ) {
            int twidx=0;
            Fout[ k ] = scratch[0];
            for (q=1;q<p;++q ) {
                twidx += fstride * k;
                if (twidx>=Norig) twidx-=Norig;
                C_MUL(t,scratch[q] , twiddles[twidx] );
                C_ADDTO( Fout[ k ] ,t);
            }
            k += m;
        }
    }
    KISSF_FFT_TMP_FREE(scratch);
}
