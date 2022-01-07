
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int smooth_percent; } ;
struct TYPE_7__ {int start; int end; } ;
typedef TYPE_1__ IterIndices ;
typedef TYPE_2__ DeshakeOpenCLContext ;
typedef int AVFifoBuffer ;


 float fabsf (float) ;
 int make_gauss_kernel (float*,int,float) ;
 float powf (float,int) ;
 int ringbuf_float_at (TYPE_2__*,int *,float*,int) ;
 TYPE_1__ start_end_for (TYPE_2__*,int) ;

__attribute__((used)) static float smooth(
    DeshakeOpenCLContext *deshake_ctx,
    float *gauss_kernel,
    int length,
    float max_val,
    AVFifoBuffer *values
) {
    float new_large_s = 0, new_small_s = 0, new_best = 0, old, diff_between,
          percent_of_max, inverted_percent;
    IterIndices indices = start_end_for(deshake_ctx, length);
    float large_sigma = 40.0f;
    float small_sigma = 2.0f;
    float best_sigma;

    if (deshake_ctx->smooth_percent) {
        best_sigma = (large_sigma - 0.5f) * deshake_ctx->smooth_percent + 0.5f;
    } else {
        make_gauss_kernel(gauss_kernel, length, large_sigma);
        for (int i = indices.start, j = 0; i < indices.end; ++i, ++j) {
            ringbuf_float_at(deshake_ctx, values, &old, i);
            new_large_s += old * gauss_kernel[j];
        }

        make_gauss_kernel(gauss_kernel, length, small_sigma);
        for (int i = indices.start, j = 0; i < indices.end; ++i, ++j) {
            ringbuf_float_at(deshake_ctx, values, &old, i);
            new_small_s += old * gauss_kernel[j];
        }

        diff_between = fabsf(new_large_s - new_small_s);
        percent_of_max = diff_between / max_val;
        inverted_percent = 1 - percent_of_max;
        best_sigma = large_sigma * powf(inverted_percent, 40);
    }

    make_gauss_kernel(gauss_kernel, length, best_sigma);
    for (int i = indices.start, j = 0; i < indices.end; ++i, ++j) {
        ringbuf_float_at(deshake_ctx, values, &old, i);
        new_best += old * gauss_kernel[j];
    }

    return new_best;
}
