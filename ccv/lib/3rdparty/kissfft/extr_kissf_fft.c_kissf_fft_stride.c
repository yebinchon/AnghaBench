
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const kissf_fft_cpx ;
typedef TYPE_1__* kissf_fft_cfg ;
struct TYPE_4__ {int nfft; int factors; } ;


 scalar_t__ KISSF_FFT_TMP_ALLOC (int) ;
 int KISSF_FFT_TMP_FREE (int const*) ;
 int kf_work (int const*,int const*,int,int,int ,TYPE_1__*) ;
 int memcpy (int const*,int const*,int) ;

void kissf_fft_stride(kissf_fft_cfg st,const kissf_fft_cpx *fin,kissf_fft_cpx *fout,int in_stride)
{
    if (fin == fout) {


        kissf_fft_cpx * tmpbuf = (kissf_fft_cpx*)KISSF_FFT_TMP_ALLOC( sizeof(kissf_fft_cpx)*st->nfft);
        kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
        memcpy(fout,tmpbuf,sizeof(kissf_fft_cpx)*st->nfft);
        KISSF_FFT_TMP_FREE(tmpbuf);
    }else{
        kf_work( fout, fin, 1,in_stride, st->factors,st );
    }
}
