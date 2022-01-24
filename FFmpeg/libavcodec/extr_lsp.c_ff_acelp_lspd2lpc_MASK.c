#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int MAX_LP_HALF_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double const*,double*,int) ; 

void FUNC2(const double *lsp, float *lpc, int lp_half_order)
{
    double pa[MAX_LP_HALF_ORDER+1], qa[MAX_LP_HALF_ORDER+1];
    float *lpc2 = lpc + (lp_half_order << 1) - 1;

    FUNC0(lp_half_order <= MAX_LP_HALF_ORDER);

    FUNC1(lsp,     pa, lp_half_order);
    FUNC1(lsp + 1, qa, lp_half_order);

    while (lp_half_order--) {
        double paf = pa[lp_half_order+1] + pa[lp_half_order];
        double qaf = qa[lp_half_order+1] - qa[lp_half_order];

        lpc [ lp_half_order] = 0.5*(paf+qaf);
        lpc2[-lp_half_order] = 0.5*(paf-qaf);
    }
}