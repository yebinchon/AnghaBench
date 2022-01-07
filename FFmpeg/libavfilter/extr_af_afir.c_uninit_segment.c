
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int nb_channels; } ;
struct TYPE_6__ {scalar_t__ input_size; int output; int input; int coeff; int buffer; int sum; int block; int * part_index; int * output_offset; int * irdft; int * rdft; } ;
typedef TYPE_1__ AudioFIRSegment ;
typedef TYPE_2__ AudioFIRContext ;
typedef TYPE_3__ AVFilterContext ;


 int av_frame_free (int *) ;
 int av_freep (int **) ;
 int av_rdft_end (int ) ;

__attribute__((used)) static void uninit_segment(AVFilterContext *ctx, AudioFIRSegment *seg)
{
    AudioFIRContext *s = ctx->priv;

    if (seg->rdft) {
        for (int ch = 0; ch < s->nb_channels; ch++) {
            av_rdft_end(seg->rdft[ch]);
        }
    }
    av_freep(&seg->rdft);

    if (seg->irdft) {
        for (int ch = 0; ch < s->nb_channels; ch++) {
            av_rdft_end(seg->irdft[ch]);
        }
    }
    av_freep(&seg->irdft);

    av_freep(&seg->output_offset);
    av_freep(&seg->part_index);

    av_frame_free(&seg->block);
    av_frame_free(&seg->sum);
    av_frame_free(&seg->buffer);
    av_frame_free(&seg->coeff);
    av_frame_free(&seg->input);
    av_frame_free(&seg->output);
    seg->input_size = 0;
}
