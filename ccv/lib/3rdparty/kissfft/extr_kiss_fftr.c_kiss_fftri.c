
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* kiss_fftr_cfg ;
typedef int kiss_fft_scalar ;
struct TYPE_18__ {int r; int i; } ;
typedef TYPE_2__ kiss_fft_cpx ;
struct TYPE_19__ {scalar_t__ inverse; int nfft; } ;
struct TYPE_17__ {TYPE_2__* tmpbuf; TYPE_5__* substate; int * super_twiddles; } ;


 int C_ADD (TYPE_2__,TYPE_2__,TYPE_2__) ;
 int C_FIXDIV (TYPE_2__,int) ;
 int C_MUL (TYPE_2__,TYPE_2__,int ) ;
 int C_SUB (TYPE_2__,TYPE_2__,TYPE_2__) ;
 int _mm_set1_ps (double) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int kiss_fft (TYPE_5__*,TYPE_2__*,TYPE_2__*) ;
 int stderr ;

void kiss_fftri(kiss_fftr_cfg st,const kiss_fft_cpx *freqdata,kiss_fft_scalar *timedata)
{

    int k, ncfft;

    if (st->substate->inverse == 0) {
        fprintf (stderr, "kiss fft usage error: improper alloc\n");
        exit (1);
    }

    ncfft = st->substate->nfft;

    st->tmpbuf[0].r = freqdata[0].r + freqdata[ncfft].r;
    st->tmpbuf[0].i = freqdata[0].r - freqdata[ncfft].r;
    C_FIXDIV(st->tmpbuf[0],2);

    for (k = 1; k <= ncfft / 2; ++k) {
        kiss_fft_cpx fk, fnkc, fek, fok, tmp;
        fk = freqdata[k];
        fnkc.r = freqdata[ncfft - k].r;
        fnkc.i = -freqdata[ncfft - k].i;
        C_FIXDIV( fk , 2 );
        C_FIXDIV( fnkc , 2 );

        C_ADD (fek, fk, fnkc);
        C_SUB (tmp, fk, fnkc);
        C_MUL (fok, tmp, st->super_twiddles[k-1]);
        C_ADD (st->tmpbuf[k], fek, fok);
        C_SUB (st->tmpbuf[ncfft - k], fek, fok);



        st->tmpbuf[ncfft - k].i *= -1;

    }
    kiss_fft (st->substate, st->tmpbuf, (kiss_fft_cpx *) timedata);
}
