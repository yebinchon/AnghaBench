
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_33__ {int (* dot_productf ) (int*,int*,int) ;} ;
struct TYPE_26__ {int (* acelp_apply_order_2_transfer_function ) (float*,float*,int ,int ,int ,int ,int) ;} ;
struct TYPE_31__ {int vad; TYPE_5__* subframe; int isp_id; } ;
struct TYPE_32__ {size_t fr_cur_mode; double* isf_cur; double** isp; int* fixed_vector; int* pitch_gain; int* fixed_gain; float tilt_coef; int* excitation; float* samples_up; float* samples_hb; int isf_past_final; int isp_sub4_past; int lpf_7_mem; int bpf_6_7_mem; int hpf_400_mem; TYPE_1__ acelpf_ctx; TYPE_8__ celpm_ctx; int hpf_31_mem; int demph_mem; int * samples_az; int * lp_coef; int prev_tr_gain; int pitch_vector; int prediction_error; scalar_t__ first_frame; int isf_q_past; TYPE_6__ frame; int fr_quality; } ;
struct TYPE_30__ {int hb_gain; int vq_gain; int pul_il; int pul_ih; } ;
struct TYPE_29__ {TYPE_7__* priv_data; } ;
struct TYPE_28__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_27__ {int size; int * data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AMRWBSubFrame ;
typedef TYPE_6__ AMRWBFrame ;
typedef TYPE_7__ AMRWBContext ;


 int AMRWB_SFR_SIZE ;
 int AMRWB_SFR_SIZE_16k ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int ENERGY_MEAN ;
 int LP_ORDER ;
 size_t LP_ORDER_16k ;
 int MIN_ISF_SPACING ;
 scalar_t__ MODE_23k85 ;
 size_t MODE_6k60 ;
 size_t MODE_SID ;
 int PREEMPH_FAC ;
 size_t UPS_FIR_SIZE ;
 size_t UPS_MEM_SIZE ;
 int * amr_bit_orderings_by_mode ;
 float* anti_sparseness (TYPE_7__*,int*,float*) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int avpriv_request_sample (TYPE_4__*,char*) ;
 int bpf_6_7_coef ;
 int* cf_sizes_wb ;
 int de_emphasis (float*,int *,int ,int ) ;
 int decode_fixed_vector (int*,int ,int ,size_t) ;
 int decode_gains (int ,size_t,float*,int*) ;
 int decode_isf_indices_36b (int ,double*) ;
 int decode_isf_indices_46b (int ,double*) ;
 int decode_mime_header (TYPE_7__*,int const*) ;
 int decode_pitch_vector (TYPE_7__*,TYPE_5__ const*,int) ;
 int energy_pred_fac ;
 int ff_acelp_lsf2lspd (double*,double*,int) ;
 int ff_amr_bit_reorder (int *,int,int const*,int ) ;
 int ff_amr_set_fixed_gain (float,int,int ,int ,int ) ;
 int ff_amrwb_lsp2lpc (double*,int ,int) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int ff_set_min_dist_lsf (double*,int ,int) ;
 float find_hb_gain (TYPE_7__*,float*,int ,int ) ;
 int hb_fir_filter (float*,int ,int ,float*) ;
 int hb_synthesis (TYPE_7__*,int,float*,float*,double*,int ) ;
 int hpf_31_gain ;
 int hpf_31_poles ;
 int hpf_400_gain ;
 int hpf_400_poles ;
 int hpf_zeros ;
 int interpolate_isp (double**,int ) ;
 int isf_add_mean_and_past (double*,int ) ;
 int lpf_7_coef ;
 int memcpy (int ,double*,int) ;
 float noise_enhancer (int,int *,float,float) ;
 int pitch_enhancer (float*,float) ;
 int pitch_sharpening (TYPE_7__*,int*) ;
 int scaled_hb_excitation (TYPE_7__*,float*,float*,float) ;
 float stability_factor (double*,int ) ;
 int stub1 (int*,int*,int) ;
 int stub2 (float*,float*,int ,int ,int ,int ,int) ;
 int stub3 (float*,float*,int ,int ,int ,int ,int) ;
 int synthesis (TYPE_7__*,int ,float*,float,float*,int *) ;
 int truncf (int) ;
 int update_sub_state (TYPE_7__*) ;
 int upsample_5_4 (float*,float*,int,TYPE_8__*) ;
 float voice_factor (int ,int,int*,int,TYPE_8__*) ;

__attribute__((used)) static int amrwb_decode_frame(AVCodecContext *avctx, void *data,
                              int *got_frame_ptr, AVPacket *avpkt)
{
    AMRWBContext *ctx = avctx->priv_data;
    AVFrame *frame = data;
    AMRWBFrame *cf = &ctx->frame;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    int expected_fr_size, header_size;
    float *buf_out;
    float spare_vector[AMRWB_SFR_SIZE];
    float fixed_gain_factor;
    float *synth_fixed_vector;
    float synth_fixed_gain;
    float voice_fac, stab_fac;
    float synth_exc[AMRWB_SFR_SIZE];
    float hb_exc[AMRWB_SFR_SIZE_16k];
    float hb_samples[AMRWB_SFR_SIZE_16k];
    float hb_gain;
    int sub, i, ret;


    frame->nb_samples = 4 * AMRWB_SFR_SIZE_16k;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    buf_out = (float *)frame->data[0];

    header_size = decode_mime_header(ctx, buf);
    if (ctx->fr_cur_mode > MODE_SID) {
        av_log(avctx, AV_LOG_ERROR,
               "Invalid mode %d\n", ctx->fr_cur_mode);
        return AVERROR_INVALIDDATA;
    }
    expected_fr_size = ((cf_sizes_wb[ctx->fr_cur_mode] + 7) >> 3) + 1;

    if (buf_size < expected_fr_size) {
        av_log(avctx, AV_LOG_ERROR,
            "Frame too small (%d bytes). Truncated file?\n", buf_size);
        *got_frame_ptr = 0;
        return AVERROR_INVALIDDATA;
    }

    if (!ctx->fr_quality || ctx->fr_cur_mode > MODE_SID)
        av_log(avctx, AV_LOG_ERROR, "Encountered a bad or corrupted frame\n");

    if (ctx->fr_cur_mode == MODE_SID) {
        avpriv_request_sample(avctx, "SID mode");
        return AVERROR_PATCHWELCOME;
    }

    ff_amr_bit_reorder((uint16_t *) &ctx->frame, sizeof(AMRWBFrame),
        buf + header_size, amr_bit_orderings_by_mode[ctx->fr_cur_mode]);


    if (ctx->fr_cur_mode == MODE_6k60) {
        decode_isf_indices_36b(cf->isp_id, ctx->isf_cur);
    } else {
        decode_isf_indices_46b(cf->isp_id, ctx->isf_cur);
    }

    isf_add_mean_and_past(ctx->isf_cur, ctx->isf_q_past);
    ff_set_min_dist_lsf(ctx->isf_cur, MIN_ISF_SPACING, LP_ORDER - 1);

    stab_fac = stability_factor(ctx->isf_cur, ctx->isf_past_final);

    ctx->isf_cur[LP_ORDER - 1] *= 2.0;
    ff_acelp_lsf2lspd(ctx->isp[3], ctx->isf_cur, LP_ORDER);


    if (ctx->first_frame) {
        ctx->first_frame = 0;
        memcpy(ctx->isp_sub4_past, ctx->isp[3], LP_ORDER * sizeof(double));
    }
    interpolate_isp(ctx->isp, ctx->isp_sub4_past);

    for (sub = 0; sub < 4; sub++)
        ff_amrwb_lsp2lpc(ctx->isp[sub], ctx->lp_coef[sub], LP_ORDER);

    for (sub = 0; sub < 4; sub++) {
        const AMRWBSubFrame *cur_subframe = &cf->subframe[sub];
        float *sub_buf = buf_out + sub * AMRWB_SFR_SIZE_16k;


        decode_pitch_vector(ctx, cur_subframe, sub);

        decode_fixed_vector(ctx->fixed_vector, cur_subframe->pul_ih,
                            cur_subframe->pul_il, ctx->fr_cur_mode);

        pitch_sharpening(ctx, ctx->fixed_vector);

        decode_gains(cur_subframe->vq_gain, ctx->fr_cur_mode,
                     &fixed_gain_factor, &ctx->pitch_gain[0]);

        ctx->fixed_gain[0] =
            ff_amr_set_fixed_gain(fixed_gain_factor,
                                  ctx->celpm_ctx.dot_productf(ctx->fixed_vector,
                                                               ctx->fixed_vector,
                                                               AMRWB_SFR_SIZE) /
                                  AMRWB_SFR_SIZE,
                       ctx->prediction_error,
                       ENERGY_MEAN, energy_pred_fac);


        voice_fac = voice_factor(ctx->pitch_vector, ctx->pitch_gain[0],
                                      ctx->fixed_vector, ctx->fixed_gain[0],
                                      &ctx->celpm_ctx);
        ctx->tilt_coef = voice_fac * 0.25 + 0.25;


        for (i = 0; i < AMRWB_SFR_SIZE; i++) {
            ctx->excitation[i] *= ctx->pitch_gain[0];
            ctx->excitation[i] += ctx->fixed_gain[0] * ctx->fixed_vector[i];
            ctx->excitation[i] = truncf(ctx->excitation[i]);
        }


        synth_fixed_gain = noise_enhancer(ctx->fixed_gain[0], &ctx->prev_tr_gain,
                                          voice_fac, stab_fac);

        synth_fixed_vector = anti_sparseness(ctx, ctx->fixed_vector,
                                             spare_vector);

        pitch_enhancer(synth_fixed_vector, voice_fac);

        synthesis(ctx, ctx->lp_coef[sub], synth_exc, synth_fixed_gain,
                  synth_fixed_vector, &ctx->samples_az[LP_ORDER]);


        de_emphasis(&ctx->samples_up[UPS_MEM_SIZE],
                    &ctx->samples_az[LP_ORDER], PREEMPH_FAC, ctx->demph_mem);

        ctx->acelpf_ctx.acelp_apply_order_2_transfer_function(&ctx->samples_up[UPS_MEM_SIZE],
            &ctx->samples_up[UPS_MEM_SIZE], hpf_zeros, hpf_31_poles,
            hpf_31_gain, ctx->hpf_31_mem, AMRWB_SFR_SIZE);

        upsample_5_4(sub_buf, &ctx->samples_up[UPS_FIR_SIZE],
                     AMRWB_SFR_SIZE_16k, &ctx->celpm_ctx);


        ctx->acelpf_ctx.acelp_apply_order_2_transfer_function(hb_samples,
            &ctx->samples_up[UPS_MEM_SIZE], hpf_zeros, hpf_400_poles,
            hpf_400_gain, ctx->hpf_400_mem, AMRWB_SFR_SIZE);

        hb_gain = find_hb_gain(ctx, hb_samples,
                               cur_subframe->hb_gain, cf->vad);

        scaled_hb_excitation(ctx, hb_exc, synth_exc, hb_gain);

        hb_synthesis(ctx, sub, &ctx->samples_hb[LP_ORDER_16k],
                     hb_exc, ctx->isf_cur, ctx->isf_past_final);


        hb_fir_filter(hb_samples, bpf_6_7_coef, ctx->bpf_6_7_mem,
                      &ctx->samples_hb[LP_ORDER_16k]);

        if (ctx->fr_cur_mode == MODE_23k85)
            hb_fir_filter(hb_samples, lpf_7_coef, ctx->lpf_7_mem,
                          hb_samples);


        for (i = 0; i < AMRWB_SFR_SIZE_16k; i++)
            sub_buf[i] = (sub_buf[i] + hb_samples[i]) * (1.0f / (1 << 15));


        update_sub_state(ctx);
    }


    memcpy(ctx->isp_sub4_past, ctx->isp[3], LP_ORDER * sizeof(ctx->isp[3][0]));
    memcpy(ctx->isf_past_final, ctx->isf_cur, LP_ORDER * sizeof(float));

    *got_frame_ptr = 1;

    return expected_fr_size;
}
