
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ sample_fmt; int channels; } ;
struct TYPE_17__ {int * data; scalar_t__ nb_samples; } ;
struct TYPE_14__ {int (* mlp_pack_output ) (int ,scalar_t__,int **,int ,int ,int ,unsigned int,int) ;int (* mlp_rematrix_channel ) (int *,int ,int *,int ,unsigned int,unsigned int,scalar_t__,unsigned int,int ,int ,int ) ;} ;
struct TYPE_16__ {int ** sample_buffer; TYPE_1__ dsp; int access_unit_size_pow2; int noise_buffer; int ** bypassed_lsbs; TYPE_5__* avctx; TYPE_2__* substream; } ;
struct TYPE_15__ {int max_matrix_channel; unsigned int num_primitive_matrices; unsigned int* matrix_out_ch; int matrix_encoding; int output_shift; int ch_assign; scalar_t__ blockpos; int lossless_check_data; int * quant_step_size; int * matrix_noise_shift; int * matrix_coeff; int noise_type; } ;
typedef TYPE_2__ SubStream ;
typedef TYPE_3__ MLPDecodeContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_SAMPLE_FMT_S32 ;
 int MSB_MASK (int ) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int ff_get_buffer (TYPE_5__*,TYPE_4__*,int ) ;
 int ff_side_data_update_matrix_encoding (TYPE_4__*,int ) ;
 int fill_noise_buffer (TYPE_3__*,unsigned int) ;
 int generate_2_noise_channels (TYPE_3__*,unsigned int) ;
 int stub1 (int *,int ,int *,int ,unsigned int,unsigned int,scalar_t__,unsigned int,int ,int ,int ) ;
 int stub2 (int ,scalar_t__,int **,int ,int ,int ,unsigned int,int) ;

__attribute__((used)) static int output_data(MLPDecodeContext *m, unsigned int substr,
                       AVFrame *frame, int *got_frame_ptr)
{
    AVCodecContext *avctx = m->avctx;
    SubStream *s = &m->substream[substr];
    unsigned int mat;
    unsigned int maxchan;
    int ret;
    int is32 = (m->avctx->sample_fmt == AV_SAMPLE_FMT_S32);

    if (m->avctx->channels != s->max_matrix_channel + 1) {
        av_log(m->avctx, AV_LOG_ERROR, "channel count mismatch\n");
        return AVERROR_INVALIDDATA;
    }

    if (!s->blockpos) {
        av_log(avctx, AV_LOG_ERROR, "No samples to output.\n");
        return AVERROR_INVALIDDATA;
    }

    maxchan = s->max_matrix_channel;
    if (!s->noise_type) {
        generate_2_noise_channels(m, substr);
        maxchan += 2;
    } else {
        fill_noise_buffer(m, substr);
    }



    for (mat = 0; mat < s->num_primitive_matrices; mat++) {
        unsigned int dest_ch = s->matrix_out_ch[mat];
        m->dsp.mlp_rematrix_channel(&m->sample_buffer[0][0],
                                    s->matrix_coeff[mat],
                                    &m->bypassed_lsbs[0][mat],
                                    m->noise_buffer,
                                    s->num_primitive_matrices - mat,
                                    dest_ch,
                                    s->blockpos,
                                    maxchan,
                                    s->matrix_noise_shift[mat],
                                    m->access_unit_size_pow2,
                                    MSB_MASK(s->quant_step_size[dest_ch]));
    }


    frame->nb_samples = s->blockpos;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    s->lossless_check_data = m->dsp.mlp_pack_output(s->lossless_check_data,
                                                    s->blockpos,
                                                    m->sample_buffer,
                                                    frame->data[0],
                                                    s->ch_assign,
                                                    s->output_shift,
                                                    s->max_matrix_channel,
                                                    is32);


    if ((ret = ff_side_data_update_matrix_encoding(frame, s->matrix_encoding)) < 0)
        return ret;

    *got_frame_ptr = 1;

    return 0;
}
