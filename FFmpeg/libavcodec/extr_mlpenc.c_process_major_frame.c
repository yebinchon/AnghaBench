
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int num_substreams; int * major_channel_params; int cur_channel_params; int ** major_decoding_params; int * cur_decoding_params; TYPE_1__* restart_header; TYPE_1__* cur_restart_header; int major_frame_size; int number_of_samples; int major_number_of_frames; int number_of_frames; scalar_t__ starting_frame_index; int major_inout_buffer; int sample_buffer; } ;
struct TYPE_7__ {unsigned int min_channel; unsigned int max_channel; } ;
typedef TYPE_1__ RestartHeader ;
typedef TYPE_2__ MLPEncodeContext ;


 int apply_filter (TYPE_2__*,unsigned int) ;
 int generate_2_noise_channels (TYPE_2__*) ;
 int rematrix_channels (TYPE_2__*) ;

__attribute__((used)) static void process_major_frame(MLPEncodeContext *ctx)
{
    unsigned int substr;

    ctx->sample_buffer = ctx->major_inout_buffer;

    ctx->starting_frame_index = 0;
    ctx->number_of_frames = ctx->major_number_of_frames;
    ctx->number_of_samples = ctx->major_frame_size;

    for (substr = 0; substr < ctx->num_substreams; substr++) {
        RestartHeader *rh = ctx->cur_restart_header;
        unsigned int channel;

        ctx->cur_restart_header = &ctx->restart_header[substr];

        ctx->cur_decoding_params = &ctx->major_decoding_params[1][substr];
        ctx->cur_channel_params = ctx->major_channel_params[1];

        generate_2_noise_channels(ctx);
        rematrix_channels (ctx);

        for (channel = rh->min_channel; channel <= rh->max_channel; channel++)
            apply_filter(ctx, channel);
    }
}
