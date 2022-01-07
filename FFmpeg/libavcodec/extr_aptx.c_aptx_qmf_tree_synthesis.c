
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int outer_filter_signal; int * inner_filter_signal; } ;
typedef TYPE_1__ QMFAnalysis ;


 int aptx_qmf_inner_coeffs ;
 int aptx_qmf_outer_coeffs ;
 int aptx_qmf_polyphase_synthesis (int ,int ,int,int ,int ,int *) ;

__attribute__((used)) static void aptx_qmf_tree_synthesis(QMFAnalysis *qmf,
                                    int32_t subband_samples[4],
                                    int32_t samples[4])
{
    int32_t intermediate_samples[4];
    int i;


    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_synthesis(qmf->inner_filter_signal[i],
                                     aptx_qmf_inner_coeffs, 22,
                                     subband_samples[2*i+0],
                                     subband_samples[2*i+1],
                                     &intermediate_samples[2*i]);


    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_synthesis(qmf->outer_filter_signal,
                                     aptx_qmf_outer_coeffs, 21,
                                     intermediate_samples[0+i],
                                     intermediate_samples[2+i],
                                     &samples[2*i]);
}
