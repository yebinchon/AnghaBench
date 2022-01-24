#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * hf_apply_noise; int /*<<< orphan*/  hf_g_filt; int /*<<< orphan*/  hf_gen; int /*<<< orphan*/  autocorrelate; int /*<<< orphan*/  qmf_deint_bfly; int /*<<< orphan*/  sum_square; int /*<<< orphan*/  sum64x5; int /*<<< orphan*/  qmf_post_shuffle; int /*<<< orphan*/  qmf_pre_shuffle; } ;
typedef  TYPE_1__ SBRDSPContext ;

/* Variables and functions */
 int /*<<< orphan*/  sbr_autocorrelate_mips ; 
 int /*<<< orphan*/  sbr_hf_apply_noise_0_mips ; 
 int /*<<< orphan*/  sbr_hf_apply_noise_1_mips ; 
 int /*<<< orphan*/  sbr_hf_apply_noise_2_mips ; 
 int /*<<< orphan*/  sbr_hf_apply_noise_3_mips ; 
 int /*<<< orphan*/  sbr_hf_g_filt_mips ; 
 int /*<<< orphan*/  sbr_hf_gen_mips ; 
 int /*<<< orphan*/  sbr_qmf_deint_bfly_mips ; 
 int /*<<< orphan*/  sbr_qmf_post_shuffle_mips ; 
 int /*<<< orphan*/  sbr_qmf_pre_shuffle_mips ; 
 int /*<<< orphan*/  sbr_sum64x5_mips ; 
 int /*<<< orphan*/  sbr_sum_square_mips ; 

void FUNC0(SBRDSPContext *s)
{
#if HAVE_INLINE_ASM
    s->qmf_pre_shuffle = sbr_qmf_pre_shuffle_mips;
    s->qmf_post_shuffle = sbr_qmf_post_shuffle_mips;
#if HAVE_MIPSFPU
#if !HAVE_MIPS32R6 && !HAVE_MIPS64R6
    s->sum64x5 = sbr_sum64x5_mips;
    s->sum_square = sbr_sum_square_mips;
    s->qmf_deint_bfly = sbr_qmf_deint_bfly_mips;
    s->autocorrelate = sbr_autocorrelate_mips;
    s->hf_gen = sbr_hf_gen_mips;
    s->hf_g_filt = sbr_hf_g_filt_mips;

    s->hf_apply_noise[0] = sbr_hf_apply_noise_0_mips;
    s->hf_apply_noise[1] = sbr_hf_apply_noise_1_mips;
    s->hf_apply_noise[2] = sbr_hf_apply_noise_2_mips;
    s->hf_apply_noise[3] = sbr_hf_apply_noise_3_mips;
#endif /* !HAVE_MIPS32R6 && !HAVE_MIPS64R6 */
#endif /* HAVE_MIPSFPU */
#endif /* HAVE_INLINE_ASM */
}