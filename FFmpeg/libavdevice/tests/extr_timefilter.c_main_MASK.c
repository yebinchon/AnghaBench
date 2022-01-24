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
typedef  int /*<<< orphan*/  TimeFilter ;
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 int LFG_MAX ; 
 int SAMPLES ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,double,double) ; 
 double FUNC5 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(void)
{
    AVLFG prng;
    double n0, n1;
#define SAMPLES 1000
    double ideal[SAMPLES];
    double samples[SAMPLES];
    double samplet[SAMPLES];
    for (n0 = 0; n0 < 40; n0 = 2 * n0 + 1) {
        for (n1 = 0; n1 < 10; n1 = 2 * n1 + 1) {
            double best_error = 1000000000;
            double bestpar0   = n0 ? 1 : 100000;
            double bestpar1   = 1;
            int better, i;

            FUNC1(&prng, 123);
            for (i = 0; i < SAMPLES; i++) {
                samplet[i] = 10 + i + (FUNC0(&prng) < LFG_MAX/2 ? 0 : 0.999);
                ideal[i]   = samplet[i] + n1 * i / (1000);
                samples[i] = ideal[i] + n0 * (FUNC0(&prng) - LFG_MAX / 2) / (LFG_MAX * 10LL);
                if(i && samples[i]<samples[i-1])
                    samples[i]=samples[i-1]+0.001;
            }

            do {
                double par0, par1;
                better = 0;
                for (par0 = bestpar0 * 0.8; par0 <= bestpar0 * 1.21; par0 += bestpar0 * 0.05) {
                    for (par1 = bestpar1 * 0.8; par1 <= bestpar1 * 1.21; par1 += bestpar1 * 0.05) {
                        double error   = 0;
                        TimeFilter *tf = FUNC4(1, par0, par1);
                        if (!tf) {
                            FUNC6("Could not allocate memory for timefilter.\n");
                            FUNC2(1);
                        }
                        for (i = 0; i < SAMPLES; i++) {
                            double filtered;
                            filtered = FUNC5(tf, samples[i], i ? (samplet[i] - samplet[i-1]) : 1);
                            if(filtered < 0 || filtered > 1000000000)
                                FUNC6("filter is unstable\n");
                            error   += (filtered - ideal[i]) * (filtered - ideal[i]);
                        }
                        FUNC3(tf);
                        if (error < best_error) {
                            best_error = error;
                            bestpar0   = par0;
                            bestpar1   = par1;
                            better     = 1;
                        }
                    }
                }
            } while (better);
            FUNC6(" [%12f %11f %9f]", bestpar0, bestpar1, best_error);
        }
        FUNC6("\n");
    }
    return 0;
}