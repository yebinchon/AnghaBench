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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int const) ; 

__attribute__((used)) static inline uint32_t FUNC2(uint32_t N, uint32_t K, const int *y)
{
    int i, idx = 0, sum = 0;
    for (i = N - 1; i >= 0; i--) {
        const uint32_t i_s = FUNC0(N - i, sum + FUNC1(y[i]) + 1);
        idx += FUNC0(N - i, sum) + (y[i] < 0)*i_s;
        sum += FUNC1(y[i]);
    }
    return idx;
}