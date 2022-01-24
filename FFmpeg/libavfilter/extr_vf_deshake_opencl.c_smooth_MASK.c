#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int smooth_percent; } ;
struct TYPE_7__ {int start; int end; } ;
typedef  TYPE_1__ IterIndices ;
typedef  TYPE_2__ DeshakeOpenCLContext ;
typedef  int /*<<< orphan*/  AVFifoBuffer ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float*,int,float) ; 
 float FUNC2 (float,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,float*,int) ; 
 TYPE_1__ FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static float FUNC5(
    DeshakeOpenCLContext *deshake_ctx,
    float *gauss_kernel,
    int length,
    float max_val,
    AVFifoBuffer *values
) {
    float new_large_s = 0, new_small_s = 0, new_best = 0, old, diff_between,
          percent_of_max, inverted_percent;
    IterIndices indices = FUNC4(deshake_ctx, length);
    float large_sigma = 40.0f;
    float small_sigma = 2.0f;
    float best_sigma;

    if (deshake_ctx->smooth_percent) {
        best_sigma = (large_sigma - 0.5f) * deshake_ctx->smooth_percent + 0.5f;
    } else {
        // Strategy to adaptively smooth trajectory:
        //
        // 1. Smooth path with large and small sigma values
        // 2. Take the absolute value of the difference between them
        // 3. Get a percentage by putting the difference over the "max value"
        // 4, Invert the percentage
        // 5. Calculate a new sigma value weighted towards the larger sigma value
        // 6. Determine final smoothed trajectory value using that sigma

        FUNC1(gauss_kernel, length, large_sigma);
        for (int i = indices.start, j = 0; i < indices.end; ++i, ++j) {
            FUNC3(deshake_ctx, values, &old, i);
            new_large_s += old * gauss_kernel[j];
        }

        FUNC1(gauss_kernel, length, small_sigma);
        for (int i = indices.start, j = 0; i < indices.end; ++i, ++j) {
            FUNC3(deshake_ctx, values, &old, i);
            new_small_s += old * gauss_kernel[j];
        }

        diff_between = FUNC0(new_large_s - new_small_s);
        percent_of_max = diff_between / max_val;
        inverted_percent = 1 - percent_of_max;
        best_sigma = large_sigma * FUNC2(inverted_percent, 40);
    }

    FUNC1(gauss_kernel, length, best_sigma);
    for (int i = indices.start, j = 0; i < indices.end; ++i, ++j) {
        FUNC3(deshake_ctx, values, &old, i);
        new_best += old * gauss_kernel[j];
    }

    return new_best;
}