
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int blocksize; } ;
struct TYPE_15__ {unsigned int num_substreams; unsigned int number_of_frames; int* frame_size; unsigned int number_of_subblocks; int sample_buffer; int num_channels; TYPE_3__* cur_decoding_params; int * best_offset; int cur_best_offset; TYPE_1__* avctx; int * cur_channel_params; int * restart_header; int * cur_restart_header; TYPE_3__* seq_decoding_params; int * seq_channel_params; } ;
struct TYPE_14__ {int channels; } ;
typedef TYPE_2__ MLPEncodeContext ;
typedef TYPE_3__ DecodingParams ;
typedef int ChannelParams ;


 int apply_filters (TYPE_2__*) ;
 int copy_restart_frame_params (TYPE_2__*,unsigned int) ;
 int determine_bits (TYPE_2__*) ;
 int determine_filters (TYPE_2__*) ;
 int determine_quant_step_size (TYPE_2__*) ;
 int generate_2_noise_channels (TYPE_2__*) ;
 int lossless_matrix_coeffs (TYPE_2__*) ;
 int rematrix_channels (TYPE_2__*) ;
 int set_best_codebook (TYPE_2__*) ;

__attribute__((used)) static void analyze_sample_buffer(MLPEncodeContext *ctx)
{
    ChannelParams *seq_cp = ctx->seq_channel_params;
    DecodingParams *seq_dp = ctx->seq_decoding_params;
    unsigned int index;
    unsigned int substr;

    for (substr = 0; substr < ctx->num_substreams; substr++) {

        ctx->cur_restart_header = &ctx->restart_header[substr];
        ctx->cur_decoding_params = seq_dp + 1*(ctx->num_substreams) + substr;
        ctx->cur_channel_params = seq_cp + 1*(ctx->avctx->channels);

        determine_quant_step_size(ctx);
        generate_2_noise_channels(ctx);
        lossless_matrix_coeffs (ctx);
        rematrix_channels (ctx);
        determine_filters (ctx);
        apply_filters (ctx);

        copy_restart_frame_params(ctx, substr);




        for (index = 0; index < ctx->number_of_frames; index++) {
            DecodingParams *dp = seq_dp + (index + 1)*(ctx->num_substreams) + substr;
            dp->blocksize = ctx->frame_size[index];
        }




        (seq_dp + substr)->blocksize = 8;
        (seq_dp + 1*(ctx->num_substreams) + substr)->blocksize -= 8;

        for (index = 0; index < ctx->number_of_subblocks; index++) {
                ctx->cur_decoding_params = seq_dp + index*(ctx->num_substreams) + substr;
                ctx->cur_channel_params = seq_cp + index*(ctx->avctx->channels);
                ctx->cur_best_offset = ctx->best_offset[index];
                determine_bits(ctx);
                ctx->sample_buffer += ctx->cur_decoding_params->blocksize * ctx->num_channels;
        }

        set_best_codebook(ctx);
    }
}
