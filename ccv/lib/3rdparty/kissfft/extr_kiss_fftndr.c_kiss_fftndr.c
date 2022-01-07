
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nrbins ;
typedef TYPE_1__* kiss_fftndr_cfg ;
typedef int kiss_fft_scalar ;
typedef int kiss_fft_cpx ;
struct TYPE_3__ {int dimReal; int dimOther; int cfg_nd; int cfg_r; scalar_t__ tmpbuf; } ;


 int MAX (int,int) ;
 int kiss_fftnd (int ,int *,int *) ;
 int kiss_fftr (int ,int const*,int *) ;

void kiss_fftndr(kiss_fftndr_cfg st,const kiss_fft_scalar *timedata,kiss_fft_cpx *freqdata)
{
    int k1,k2;
    int dimReal = st->dimReal;
    int dimOther = st->dimOther;
    int nrbins = dimReal/2+1;

    kiss_fft_cpx * tmp1 = (kiss_fft_cpx*)st->tmpbuf;
    kiss_fft_cpx * tmp2 = tmp1 + MAX(nrbins,dimOther);




    for (k1=0;k1<dimOther;++k1) {
        kiss_fftr( st->cfg_r, timedata + k1*dimReal , tmp1 );
        for (k2=0;k2<nrbins;++k2)
           tmp2[ k2*dimOther+k1 ] = tmp1[k2];
    }

    for (k2=0;k2<nrbins;++k2) {
        kiss_fftnd(st->cfg_nd, tmp2+k2*dimOther, tmp1);
        for (k1=0;k1<dimOther;++k1)
            freqdata[ k1*(nrbins) + k2] = tmp1[k1];
    }
}
