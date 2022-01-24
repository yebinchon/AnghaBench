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
 float const M_PI ; 
 double QCELP_BANDWIDTH_EXPANSION_COEFF ; 
 double FUNC0 (float const) ; 
 int /*<<< orphan*/  FUNC1 (double*,float*,int) ; 

__attribute__((used)) static void FUNC2(const float *lspf, float *lpc)
{
    double lsp[10];
    double bandwidth_expansion_coeff = QCELP_BANDWIDTH_EXPANSION_COEFF;
    int i;

    for (i = 0; i < 10; i++)
        lsp[i] = FUNC0(M_PI * lspf[i]);

    FUNC1(lsp, lpc, 5);

    for (i = 0; i < 10; i++) {
        lpc[i]                    *= bandwidth_expansion_coeff;
        bandwidth_expansion_coeff *= QCELP_BANDWIDTH_EXPANSION_COEFF;
    }
}