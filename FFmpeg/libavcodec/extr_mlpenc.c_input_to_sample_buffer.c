
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {unsigned int number_of_frames; unsigned int starting_frame_index; unsigned int max_restart_interval; unsigned int one_sample_buffer_size; unsigned int* frame_size; TYPE_1__* avctx; int * inout_buffer; int * sample_buffer; } ;
struct TYPE_4__ {unsigned int channels; } ;
typedef TYPE_2__ MLPEncodeContext ;



__attribute__((used)) static void input_to_sample_buffer(MLPEncodeContext *ctx)
{
    int32_t *sample_buffer = ctx->sample_buffer;
    unsigned int index;

    for (index = 0; index < ctx->number_of_frames; index++) {
        unsigned int cur_index = (ctx->starting_frame_index + index) % ctx->max_restart_interval;
        int32_t *input_buffer = ctx->inout_buffer + cur_index * ctx->one_sample_buffer_size;
        unsigned int i, channel;

        for (i = 0; i < ctx->frame_size[cur_index]; i++) {
            for (channel = 0; channel < ctx->avctx->channels; channel++)
                *sample_buffer++ = *input_buffer++;
            sample_buffer += 2;
            input_buffer += 2;
        }
    }
}
