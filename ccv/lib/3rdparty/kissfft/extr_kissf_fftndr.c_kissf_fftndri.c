
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nrbins ;
typedef TYPE_1__* kissf_fftndr_cfg ;
typedef int kissf_fft_scalar ;
typedef int kissf_fft_cpx ;
struct TYPE_3__ {int dimReal; int dimOther; int cfg_r; int cfg_nd; scalar_t__ tmpbuf; } ;


 int MAX (int,int) ;
 int kissf_fftnd (int ,int *,int *) ;
 int kissf_fftri (int ,int *,int *) ;

void kissf_fftndri(kissf_fftndr_cfg st,const kissf_fft_cpx *freqdata,kissf_fft_scalar *timedata)
{
    int k1,k2;
    int dimReal = st->dimReal;
    int dimOther = st->dimOther;
    int nrbins = dimReal/2+1;
    kissf_fft_cpx * tmp1 = (kissf_fft_cpx*)st->tmpbuf;
    kissf_fft_cpx * tmp2 = tmp1 + MAX(nrbins,dimOther);

    for (k2=0;k2<nrbins;++k2) {
        for (k1=0;k1<dimOther;++k1)
            tmp1[k1] = freqdata[ k1*(nrbins) + k2 ];
        kissf_fftnd(st->cfg_nd, tmp1, tmp2+k2*dimOther);
    }

    for (k1=0;k1<dimOther;++k1) {
        for (k2=0;k2<nrbins;++k2)
            tmp1[k2] = tmp2[ k2*dimOther+k1 ];
        kissf_fftri( st->cfg_r,tmp1,timedata + k1*dimReal);
    }
}
