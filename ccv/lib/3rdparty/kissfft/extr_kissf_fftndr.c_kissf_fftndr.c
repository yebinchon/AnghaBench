
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nrbins ;
typedef TYPE_1__* kissf_fftndr_cfg ;
typedef int kissf_fft_scalar ;
typedef int kissf_fft_cpx ;
struct TYPE_3__ {int dimReal; int dimOther; int cfg_nd; int cfg_r; scalar_t__ tmpbuf; } ;


 int MAX (int,int) ;
 int kissf_fftnd (int ,int *,int *) ;
 int kissf_fftr (int ,int const*,int *) ;

void kissf_fftndr(kissf_fftndr_cfg st,const kissf_fft_scalar *timedata,kissf_fft_cpx *freqdata)
{
    int k1,k2;
    int dimReal = st->dimReal;
    int dimOther = st->dimOther;
    int nrbins = dimReal/2+1;

    kissf_fft_cpx * tmp1 = (kissf_fft_cpx*)st->tmpbuf;
    kissf_fft_cpx * tmp2 = tmp1 + MAX(nrbins,dimOther);




    for (k1=0;k1<dimOther;++k1) {
        kissf_fftr( st->cfg_r, timedata + k1*dimReal , tmp1 );
        for (k2=0;k2<nrbins;++k2)
           tmp2[ k2*dimOther+k1 ] = tmp1[k2];
    }

    for (k2=0;k2<nrbins;++k2) {
        kissf_fftnd(st->cfg_nd, tmp2+k2*dimOther, tmp1);
        for (k1=0;k1<dimOther;++k1)
            freqdata[ k1*(nrbins) + k2] = tmp1[k1];
    }
}
