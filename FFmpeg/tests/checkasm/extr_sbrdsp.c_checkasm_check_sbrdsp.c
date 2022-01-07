
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hf_g_filt; int hf_gen; int autocorrelate; int qmf_deint_bfly; int qmf_deint_neg; int qmf_post_shuffle; int qmf_pre_shuffle; int neg_odd_64; int sum_square; int sum64x5; } ;
typedef TYPE_1__ SBRDSPContext ;


 scalar_t__ check_func (int ,char*) ;
 int ff_sbrdsp_init (TYPE_1__*) ;
 int report (char*) ;
 int test_autocorrelate () ;
 int test_hf_apply_noise (TYPE_1__*) ;
 int test_hf_g_filt () ;
 int test_hf_gen () ;
 int test_neg_odd_64 () ;
 int test_qmf_deint_bfly () ;
 int test_qmf_deint_neg () ;
 int test_qmf_post_shuffle () ;
 int test_qmf_pre_shuffle () ;
 int test_sum64x5 () ;
 int test_sum_square () ;

void checkasm_check_sbrdsp(void)
{
    SBRDSPContext sbrdsp;

    ff_sbrdsp_init(&sbrdsp);

    if (check_func(sbrdsp.sum64x5, "sum64x5"))
        test_sum64x5();
    report("sum64x5");

    if (check_func(sbrdsp.sum_square, "sum_square"))
        test_sum_square();
    report("sum_square");

    if (check_func(sbrdsp.neg_odd_64, "neg_odd_64"))
        test_neg_odd_64();
    report("neg_odd_64");

    if (check_func(sbrdsp.qmf_pre_shuffle, "qmf_pre_shuffle"))
        test_qmf_pre_shuffle();
    report("qmf_pre_shuffle");

    if (check_func(sbrdsp.qmf_post_shuffle, "qmf_post_shuffle"))
        test_qmf_post_shuffle();
    report("qmf_post_shuffle");

    if (check_func(sbrdsp.qmf_deint_neg, "qmf_deint_neg"))
        test_qmf_deint_neg();
    report("qmf_deint_neg");

    if (check_func(sbrdsp.qmf_deint_bfly, "qmf_deint_bfly"))
        test_qmf_deint_bfly();
    report("qmf_deint_bfly");

    if (check_func(sbrdsp.autocorrelate, "autocorrelate"))
        test_autocorrelate();
    report("autocorrelate");

    if (check_func(sbrdsp.hf_gen, "hf_gen"))
        test_hf_gen();
    report("hf_gen");

    if (check_func(sbrdsp.hf_g_filt, "hf_g_filt"))
        test_hf_g_filt();
    report("hf_g_filt");

    test_hf_apply_noise(&sbrdsp);
    report("hf_apply_noise");
}
