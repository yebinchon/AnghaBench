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
struct TYPE_3__ {float* sp_hist; float* gain_hist; float* gain_lpc; int /*<<< orphan*/  sp_lpc; } ;
typedef  TYPE_1__ RA288Context ;

/* Variables and functions */
 float FUNC0 (float,double) ; 
 float FUNC1 (float,int /*<<< orphan*/ ,int) ; 
 float FUNC2 (float*,float*,int) ; 
 double** codetable ; 
 float FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ,float*,int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*,int) ; 

__attribute__((used)) static void FUNC7(RA288Context *ractx, float gain, int cb_coef)
{
    int i;
    double sumsum;
    float sum, buffer[5];
    float *block = ractx->sp_hist + 70 + 36; // current block
    float *gain_block = ractx->gain_hist + 28;

    FUNC6(ractx->sp_hist + 70, ractx->sp_hist + 75, 36*sizeof(*block));

    /* block 46 of G.728 spec */
    sum = 32.0;
    for (i=0; i < 10; i++)
        sum -= gain_block[9-i] * ractx->gain_lpc[i];

    /* block 47 of G.728 spec */
    sum = FUNC1(sum, 0, 60);

    /* block 48 of G.728 spec */
    /* exp(sum * 0.1151292546497) == pow(10.0,sum/20) */
    sumsum = FUNC3(sum * 0.1151292546497) * gain * (1.0/(1<<23));

    for (i=0; i < 5; i++)
        buffer[i] = codetable[cb_coef][i] * sumsum;

    sum = FUNC2(buffer, buffer, 5);

    sum = FUNC0(sum, 5.0 / (1<<24));

    /* shift and store */
    FUNC6(gain_block, gain_block + 1, 9 * sizeof(*gain_block));

    gain_block[9] = 10 * FUNC5(sum) + (10*FUNC5(((1<<24)/5.)) - 32);

    FUNC4(block, ractx->sp_lpc, buffer, 5, 36);
}