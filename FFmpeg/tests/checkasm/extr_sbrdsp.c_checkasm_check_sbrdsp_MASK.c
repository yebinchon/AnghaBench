#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hf_g_filt; int /*<<< orphan*/  hf_gen; int /*<<< orphan*/  autocorrelate; int /*<<< orphan*/  qmf_deint_bfly; int /*<<< orphan*/  qmf_deint_neg; int /*<<< orphan*/  qmf_post_shuffle; int /*<<< orphan*/  qmf_pre_shuffle; int /*<<< orphan*/  neg_odd_64; int /*<<< orphan*/  sum_square; int /*<<< orphan*/  sum64x5; } ;
typedef  TYPE_1__ SBRDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(void)
{
    SBRDSPContext sbrdsp;

    FUNC1(&sbrdsp);

    if (FUNC0(sbrdsp.sum64x5, "sum64x5"))
        FUNC12();
    FUNC2("sum64x5");

    if (FUNC0(sbrdsp.sum_square, "sum_square"))
        FUNC13();
    FUNC2("sum_square");

    if (FUNC0(sbrdsp.neg_odd_64, "neg_odd_64"))
        FUNC7();
    FUNC2("neg_odd_64");

    if (FUNC0(sbrdsp.qmf_pre_shuffle, "qmf_pre_shuffle"))
        FUNC11();
    FUNC2("qmf_pre_shuffle");

    if (FUNC0(sbrdsp.qmf_post_shuffle, "qmf_post_shuffle"))
        FUNC10();
    FUNC2("qmf_post_shuffle");

    if (FUNC0(sbrdsp.qmf_deint_neg, "qmf_deint_neg"))
        FUNC9();
    FUNC2("qmf_deint_neg");

    if (FUNC0(sbrdsp.qmf_deint_bfly, "qmf_deint_bfly"))
        FUNC8();
    FUNC2("qmf_deint_bfly");

    if (FUNC0(sbrdsp.autocorrelate, "autocorrelate"))
        FUNC3();
    FUNC2("autocorrelate");

    if (FUNC0(sbrdsp.hf_gen, "hf_gen"))
        FUNC6();
    FUNC2("hf_gen");

    if (FUNC0(sbrdsp.hf_g_filt, "hf_g_filt"))
        FUNC5();
    FUNC2("hf_g_filt");

    FUNC4(&sbrdsp);
    FUNC2("hf_apply_noise");
}