
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kiss_fft_cpx ;
typedef TYPE_1__* kiss_fft_cfg ;
struct TYPE_3__ {int * twiddles; } ;


 int C_ADDTO (int ,int ) ;
 int C_FIXDIV (int ,int) ;
 int C_MUL (int ,int ,int ) ;
 int C_SUB (int ,int ,int ) ;

__attribute__((used)) static void kf_bfly2(
        kiss_fft_cpx * Fout,
        const size_t fstride,
        const kiss_fft_cfg st,
        int m
        )
{
    kiss_fft_cpx * Fout2;
    kiss_fft_cpx * tw1 = st->twiddles;
    kiss_fft_cpx t;
    Fout2 = Fout + m;
    do{
        C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);

        C_MUL (t, *Fout2 , *tw1);
        tw1 += fstride;
        C_SUB( *Fout2 , *Fout , t );
        C_ADDTO( *Fout , t );
        ++Fout2;
        ++Fout;
    }while (--m);
}
