
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hf_apply_noise; int hf_g_filt; int hf_gen; int autocorrelate; int qmf_deint_bfly; int sum_square; int sum64x5; int qmf_post_shuffle; int qmf_pre_shuffle; } ;
typedef TYPE_1__ SBRDSPContext ;


 int sbr_autocorrelate_mips ;
 int sbr_hf_apply_noise_0_mips ;
 int sbr_hf_apply_noise_1_mips ;
 int sbr_hf_apply_noise_2_mips ;
 int sbr_hf_apply_noise_3_mips ;
 int sbr_hf_g_filt_mips ;
 int sbr_hf_gen_mips ;
 int sbr_qmf_deint_bfly_mips ;
 int sbr_qmf_post_shuffle_mips ;
 int sbr_qmf_pre_shuffle_mips ;
 int sbr_sum64x5_mips ;
 int sbr_sum_square_mips ;

void ff_sbrdsp_init_mips(SBRDSPContext *s)
{
}
