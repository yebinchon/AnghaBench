
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kissf_fft_cpx ;
typedef int kissf_fft_cfg ;


 int kissf_fft_stride (int ,int const*,int *,int) ;

void kissf_fft(kissf_fft_cfg cfg,const kissf_fft_cpx *fin,kissf_fft_cpx *fout)
{
    kissf_fft_stride(cfg,fin,fout,1);
}
