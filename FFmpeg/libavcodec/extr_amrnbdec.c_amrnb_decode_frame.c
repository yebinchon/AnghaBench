
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_44__ {scalar_t__ pitch_lag; int member_0; } ;
struct TYPE_43__ {int pulses; } ;
struct TYPE_42__ {TYPE_10__* priv_data; } ;
struct TYPE_41__ {scalar_t__* data; int nb_samples; } ;
struct TYPE_40__ {int size; int * data; } ;
struct TYPE_39__ {int (* weighted_vector_sumf ) (int ,int ,int ,double,double,size_t) ;} ;
struct TYPE_38__ {int (* acelp_apply_order_2_transfer_function ) (float*,float*,int ,int ,int,int ,int ) ;} ;
struct TYPE_37__ {int (* dot_productf ) (int *,int *,int) ;} ;
struct TYPE_36__ {TYPE_8__* subframe; } ;
struct TYPE_35__ {scalar_t__ cur_frame_mode; double* fixed_gain; int * lsf_q; int lsf_avg; TYPE_4__ acelpv_ctx; int high_pass_mem; TYPE_3__ acelpf_ctx; int * fixed_vector; int * lpc; int * samples_in; int * excitation; int * pitch_gain; int prediction_error; TYPE_2__ celpm_ctx; TYPE_1__ frame; int * lsp; } ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;
typedef TYPE_8__ AMRNBSubframe ;
typedef TYPE_9__ AMRFixed ;
typedef TYPE_10__ AMRContext ;


 int AMR_BLOCK_SIZE ;
 int AMR_SAMPLE_SCALE ;
 int AMR_SUBFRAME_SIZE ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 size_t LP_FILTER_ORDER ;
 scalar_t__ MODE_12k2 ;
 scalar_t__ MODE_DTX ;
 scalar_t__ NO_DATA ;
 float* anti_sparseness (TYPE_10__*,TYPE_9__*,int *,float,float*) ;
 int av_log (TYPE_7__*,int ,char*) ;
 int avpriv_report_missing_feature (TYPE_7__*,char*) ;
 int decode_fixed_sparse (TYPE_9__*,int ,scalar_t__,int) ;
 int decode_gains (TYPE_10__*,TYPE_8__ const*,scalar_t__,int,float*) ;
 int decode_pitch_vector (TYPE_10__*,TYPE_8__ const*,int) ;
 int * energy_mean ;
 int energy_pred_fac ;
 int ff_acelp_lspd2lpc (int ,int ,int) ;
 double ff_amr_set_fixed_gain (float,int,int ,int ,int ) ;
 int ff_clear_fixed_vector (int *,TYPE_9__*,int) ;
 int ff_get_buffer (TYPE_7__*,TYPE_6__*,int ) ;
 int ff_set_fixed_vector (int *,TYPE_9__*,double,int) ;
 float fixed_gain_smooth (TYPE_10__*,int ,int ,size_t) ;
 int* frame_sizes_nb ;
 int highpass_gain ;
 int highpass_poles ;
 int highpass_zeros ;
 int lsf2lsp_3 (TYPE_10__*) ;
 int lsf2lsp_5 (TYPE_10__*) ;
 int pitch_sharpening (TYPE_10__*,int,scalar_t__,TYPE_9__*) ;
 int postfilter (TYPE_10__*,int ,float*) ;
 int stub1 (int *,int *,int) ;
 int stub2 (float*,float*,int ,int ,int,int ,int ) ;
 int stub3 (int ,int ,int ,double,double,size_t) ;
 scalar_t__ synthesis (TYPE_10__*,int ,float,float const*,int *,int) ;
 int truncf (int ) ;
 scalar_t__ unpack_bitstream (TYPE_10__*,int const*,int) ;
 int update_state (TYPE_10__*) ;

__attribute__((used)) static int amrnb_decode_frame(AVCodecContext *avctx, void *data,
                              int *got_frame_ptr, AVPacket *avpkt)
{

    AMRContext *p = avctx->priv_data;
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    float *buf_out;
    int i, subframe, ret;
    float fixed_gain_factor;
    AMRFixed fixed_sparse = {0};
    float spare_vector[AMR_SUBFRAME_SIZE];
    float synth_fixed_gain;
    const float *synth_fixed_vector;


    frame->nb_samples = AMR_BLOCK_SIZE;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    buf_out = (float *)frame->data[0];

    p->cur_frame_mode = unpack_bitstream(p, buf, buf_size);
    if (p->cur_frame_mode == NO_DATA) {
        av_log(avctx, AV_LOG_ERROR, "Corrupt bitstream\n");
        return AVERROR_INVALIDDATA;
    }
    if (p->cur_frame_mode == MODE_DTX) {
        avpriv_report_missing_feature(avctx, "dtx mode");
        av_log(avctx, AV_LOG_INFO, "Note: libopencore_amrnb supports dtx\n");
        return AVERROR_PATCHWELCOME;
    }

    if (p->cur_frame_mode == MODE_12k2) {
        lsf2lsp_5(p);
    } else
        lsf2lsp_3(p);

    for (i = 0; i < 4; i++)
        ff_acelp_lspd2lpc(p->lsp[i], p->lpc[i], 5);

    for (subframe = 0; subframe < 4; subframe++) {
        const AMRNBSubframe *amr_subframe = &p->frame.subframe[subframe];

        decode_pitch_vector(p, amr_subframe, subframe);

        decode_fixed_sparse(&fixed_sparse, amr_subframe->pulses,
                            p->cur_frame_mode, subframe);





        decode_gains(p, amr_subframe, p->cur_frame_mode, subframe,
                     &fixed_gain_factor);

        pitch_sharpening(p, subframe, p->cur_frame_mode, &fixed_sparse);

        if (fixed_sparse.pitch_lag == 0) {
            av_log(avctx, AV_LOG_ERROR, "The file is corrupted, pitch_lag = 0 is not allowed\n");
            return AVERROR_INVALIDDATA;
        }
        ff_set_fixed_vector(p->fixed_vector, &fixed_sparse, 1.0,
                            AMR_SUBFRAME_SIZE);

        p->fixed_gain[4] =
            ff_amr_set_fixed_gain(fixed_gain_factor,
                       p->celpm_ctx.dot_productf(p->fixed_vector,
                                                               p->fixed_vector,
                                                               AMR_SUBFRAME_SIZE) /
                                  AMR_SUBFRAME_SIZE,
                       p->prediction_error,
                       energy_mean[p->cur_frame_mode], energy_pred_fac);



        for (i = 0; i < AMR_SUBFRAME_SIZE; i++)
            p->excitation[i] *= p->pitch_gain[4];
        ff_set_fixed_vector(p->excitation, &fixed_sparse, p->fixed_gain[4],
                            AMR_SUBFRAME_SIZE);






        for (i = 0; i < AMR_SUBFRAME_SIZE; i++)
            p->excitation[i] = truncf(p->excitation[i]);




        synth_fixed_gain = fixed_gain_smooth(p, p->lsf_q[subframe],
                                             p->lsf_avg, p->cur_frame_mode);

        synth_fixed_vector = anti_sparseness(p, &fixed_sparse, p->fixed_vector,
                                             synth_fixed_gain, spare_vector);

        if (synthesis(p, p->lpc[subframe], synth_fixed_gain,
                      synth_fixed_vector, &p->samples_in[LP_FILTER_ORDER], 0))



            synthesis(p, p->lpc[subframe], synth_fixed_gain,
                      synth_fixed_vector, &p->samples_in[LP_FILTER_ORDER], 1);

        postfilter(p, p->lpc[subframe], buf_out + subframe * AMR_SUBFRAME_SIZE);


        ff_clear_fixed_vector(p->fixed_vector, &fixed_sparse, AMR_SUBFRAME_SIZE);
        update_state(p);
    }

    p->acelpf_ctx.acelp_apply_order_2_transfer_function(buf_out,
                                             buf_out, highpass_zeros,
                                             highpass_poles,
                                             highpass_gain * AMR_SAMPLE_SCALE,
                                             p->high_pass_mem, AMR_BLOCK_SIZE);







    p->acelpv_ctx.weighted_vector_sumf(p->lsf_avg, p->lsf_avg, p->lsf_q[3],
                            0.84, 0.16, LP_FILTER_ORDER);

    *got_frame_ptr = 1;


    return frame_sizes_nb[p->cur_frame_mode] + 1;
}
