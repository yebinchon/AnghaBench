
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int (* scalarproduct_int16 ) (int*,int*,int) ;} ;
typedef TYPE_1__ AudioDSPContext ;


 int FFABS (int) ;
 int av_log2 (int) ;
 int ff_celp_lp_synthesis_filter (int*,int const*,int*,int,int,int ,int ,int) ;
 int stub1 (int*,int*,int) ;
 int stub2 (int*,int*,int) ;

__attribute__((used)) static int16_t get_tilt_comp(AudioDSPContext *adsp, int16_t *lp_gn,
                             const int16_t *lp_gd, int16_t* speech,
                             int subframe_size)
{
    int rh1,rh0;
    int temp;
    int i;
    int gain_term;

    lp_gn[10] = 4096;


    ff_celp_lp_synthesis_filter(lp_gn + 11, lp_gd + 1, lp_gn + 11, 22, 10, 0, 0, 0x800);



    rh0 = adsp->scalarproduct_int16(lp_gn + 10, lp_gn + 10, 20);
    rh1 = adsp->scalarproduct_int16(lp_gn + 10, lp_gn + 11, 20);


    temp = av_log2(rh0) - 14;
    if (temp > 0) {
        rh0 >>= temp;
        rh1 >>= temp;
    }

    if (FFABS(rh1) > rh0 || !rh0)
        return 0;

    gain_term = 0;
    for (i = 0; i < 20; i++)
        gain_term += FFABS(lp_gn[i + 10]);
    gain_term >>= 2;

    if (gain_term > 0x400) {
        temp = 0x2000000 / gain_term;
        for (i = 0; i < subframe_size; i++)
            speech[i] = (speech[i] * temp + 0x4000) >> 15;
    }

    return -(rh1 * (1 << 15)) / rh0;
}
