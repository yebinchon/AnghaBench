
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_end_offset; int data_start_offset; } ;
struct TYPE_5__ {int smooth_window; TYPE_1__ abs_motion; } ;
typedef TYPE_2__ DeshakeOpenCLContext ;
typedef int AVFifoBuffer ;


 int av_clip (int,int,int) ;
 int av_fifo_generic_peek_at (int *,float*,int,int,int *) ;
 int av_fifo_space (int *) ;

__attribute__((used)) static void ringbuf_float_at(
    DeshakeOpenCLContext *deshake_ctx,
    AVFifoBuffer *values,
    float *val,
    int offset
) {
    int clip_start, clip_end, offset_clipped;
    if (deshake_ctx->abs_motion.data_end_offset != -1) {
        clip_end = deshake_ctx->abs_motion.data_end_offset;
    } else {


        clip_end = deshake_ctx->smooth_window - (av_fifo_space(values) / sizeof(float)) - 1;
    }

    if (deshake_ctx->abs_motion.data_start_offset != -1) {
        clip_start = deshake_ctx->abs_motion.data_start_offset;
    } else {



        clip_start = 0;
    }

    offset_clipped = av_clip(
        offset,
        clip_start,
        clip_end
    );

    av_fifo_generic_peek_at(
        values,
        val,
        offset_clipped * sizeof(float),
        sizeof(float),
        ((void*)0)
    );
}
