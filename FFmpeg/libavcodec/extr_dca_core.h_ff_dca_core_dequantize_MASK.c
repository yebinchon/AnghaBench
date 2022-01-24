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
typedef  int int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 

__attribute__((used)) static inline void FUNC3(int32_t *output, const int32_t *input,
                                          int32_t step_size, int32_t scale, int residual, int len)
{
    // Account for quantizer step size
    int64_t step_scale = (int64_t)step_size * scale;
    int n, shift = 0;

    // Limit scale factor resolution to 22 bits
    if (step_scale > (1 << 23)) {
        shift = FUNC0(step_scale >> 23) + 1;
        step_scale >>= shift;
    }

    // Scale the samples
    if (residual) {
        for (n = 0; n < len; n++)
            output[n] += FUNC1(FUNC2(input[n] * step_scale, 22 - shift));
    } else {
        for (n = 0; n < len; n++)
            output[n]  = FUNC1(FUNC2(input[n] * step_scale, 22 - shift));
    }
}