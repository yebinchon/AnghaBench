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
 double* FUNC0 (int,int) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 

__attribute__((used)) static double *FUNC3(double base, double end, int n)
{
    double log_base, log_end;
    double rcp_n = 1.0 / n;
    double *freq;
    int x;

    freq = FUNC0(n, sizeof(*freq));
    if (!freq)
        return NULL;

    log_base = FUNC2(base);
    log_end  = FUNC2(end);
    for (x = 0; x < n; x++) {
        double log_freq = log_base + (x + 0.5) * (log_end - log_base) * rcp_n;
        freq[x] = FUNC1(log_freq);
    }
    return freq;
}