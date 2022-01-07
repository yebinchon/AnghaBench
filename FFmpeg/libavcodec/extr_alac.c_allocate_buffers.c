
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int max_samples_per_frame; int direct_output; int sample_size; int avctx; int ** extra_bits_buffer; int ** output_samples_buffer; int ** predict_error_buffer; int channels; } ;
typedef TYPE_1__ ALACContext ;


 int AVERROR (int ) ;
 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int FFMIN (int ,int) ;
 int FF_ALLOC_OR_GOTO (int ,int *,unsigned int,int ) ;
 int alac_decode_close (int ) ;
 int buf_alloc_fail ;

__attribute__((used)) static int allocate_buffers(ALACContext *alac)
{
    int ch;
    unsigned buf_size = alac->max_samples_per_frame * sizeof(int32_t);

    for (ch = 0; ch < 2; ch++) {
        alac->predict_error_buffer[ch] = ((void*)0);
        alac->output_samples_buffer[ch] = ((void*)0);
        alac->extra_bits_buffer[ch] = ((void*)0);
    }

    for (ch = 0; ch < FFMIN(alac->channels, 2); ch++) {
        FF_ALLOC_OR_GOTO(alac->avctx, alac->predict_error_buffer[ch],
                         buf_size, buf_alloc_fail);

        alac->direct_output = alac->sample_size > 16;
        if (!alac->direct_output) {
            FF_ALLOC_OR_GOTO(alac->avctx, alac->output_samples_buffer[ch],
                             buf_size + AV_INPUT_BUFFER_PADDING_SIZE, buf_alloc_fail);
        }

        FF_ALLOC_OR_GOTO(alac->avctx, alac->extra_bits_buffer[ch],
                         buf_size + AV_INPUT_BUFFER_PADDING_SIZE, buf_alloc_fail);
    }
    return 0;
buf_alloc_fail:
    alac_decode_close(alac->avctx);
    return AVERROR(ENOMEM);
}
