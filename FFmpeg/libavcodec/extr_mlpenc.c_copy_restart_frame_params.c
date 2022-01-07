
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int * shift; } ;
struct TYPE_12__ {int * shift; } ;
struct TYPE_11__ {TYPE_6__ matrix_params; int * quant_step_size; } ;
struct TYPE_10__ {unsigned int number_of_subblocks; unsigned int num_substreams; int * cur_channel_params; TYPE_2__* cur_decoding_params; TYPE_1__* avctx; int * seq_channel_params; TYPE_4__* seq_decoding_params; } ;
struct TYPE_9__ {TYPE_7__ matrix_params; int * quant_step_size; } ;
struct TYPE_8__ {unsigned int channels; } ;
typedef TYPE_3__ MLPEncodeContext ;
typedef TYPE_4__ DecodingParams ;
typedef int ChannelParams ;


 unsigned int NUM_FILTERS ;
 int copy_filter_params (int *,int *,unsigned int) ;
 int copy_matrix_params (TYPE_6__*,TYPE_7__*) ;

__attribute__((used)) static void copy_restart_frame_params(MLPEncodeContext *ctx,
                                      unsigned int substr)
{
    unsigned int index;

    for (index = 0; index < ctx->number_of_subblocks; index++) {
        DecodingParams *dp = ctx->seq_decoding_params + index*(ctx->num_substreams) + substr;
        unsigned int channel;

        copy_matrix_params(&dp->matrix_params, &ctx->cur_decoding_params->matrix_params);

        for (channel = 0; channel < ctx->avctx->channels; channel++) {
            ChannelParams *cp = ctx->seq_channel_params + index*(ctx->avctx->channels) + channel;
            unsigned int filter;

            dp->quant_step_size[channel] = ctx->cur_decoding_params->quant_step_size[channel];
            dp->matrix_params.shift[channel] = ctx->cur_decoding_params->matrix_params.shift[channel];

            if (index)
                for (filter = 0; filter < NUM_FILTERS; filter++)
                    copy_filter_params(cp, &ctx->cur_channel_params[channel], filter);
        }
    }
}
