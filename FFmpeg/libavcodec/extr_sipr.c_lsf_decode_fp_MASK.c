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
struct TYPE_3__ {int /*<<< orphan*/  vq_indexes; } ;
typedef  TYPE_1__ SiprParameters ;

/* Variables and functions */
 float FUNC0 (float,double) ; 
 int LP_FILTER_ORDER ; 
 int /*<<< orphan*/  LSFQ_DIFF_MIN ; 
 double M_PI ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int) ; 
 int /*<<< orphan*/  lsf_codebooks ; 
 float* mean_lsf ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,int) ; 

__attribute__((used)) static void FUNC6(float *lsfnew, float *lsf_history,
                          const SiprParameters *parm)
{
    int i;
    float lsf_tmp[LP_FILTER_ORDER];

    FUNC2(lsf_tmp, parm->vq_indexes, lsf_codebooks);

    for (i = 0; i < LP_FILTER_ORDER; i++)
        lsfnew[i] = lsf_history[i] * 0.33 + lsf_tmp[i] + mean_lsf[i];

    FUNC4(lsfnew, LP_FILTER_ORDER - 1);

    /* Note that a minimum distance is not enforced between the last value and
       the previous one, contrary to what is done in ff_acelp_reorder_lsf() */
    FUNC3(lsfnew, LSFQ_DIFF_MIN, LP_FILTER_ORDER - 1);
    lsfnew[9] = FUNC0(lsfnew[LP_FILTER_ORDER - 1], 1.3 * M_PI);

    FUNC5(lsf_history, lsf_tmp, LP_FILTER_ORDER * sizeof(*lsf_history));

    for (i = 0; i < LP_FILTER_ORDER - 1; i++)
        lsfnew[i] = FUNC1(lsfnew[i]);
    lsfnew[LP_FILTER_ORDER - 1] *= 6.153848 / M_PI;
}