
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t int8_t ;
struct TYPE_18__ {int channels; int channel_layout; int bit_rate; int profile; scalar_t__ bits_per_raw_sample; int sample_fmt; int sample_rate; } ;
struct TYPE_17__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_16__ {int ch_mask; int flags; int freq_range; int nchannels; int part_stereo_pres; int lfe_history; int lfe_data; TYPE_1__* dcadsp; int bit_rate_scaled; int sample_rate; TYPE_4__* avctx; } ;
struct TYPE_15__ {int (* lfe_iir ) (float*,int ,int ,int ,int) ;} ;
typedef TYPE_2__ DCALbrDecoder ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_CH_LOW_FREQUENCY ;
 int AV_MATRIX_ENCODING_NONE ;
 int AV_SAMPLE_FMT_FLTP ;
 int FFMIN (int,int) ;
 int FF_PROFILE_DTS_EXPRESS ;
 int LBR_FLAG_LFE_PRESENT ;
 int* channel_counts ;
 int * channel_layouts ;
 size_t** channel_reorder_lfe ;
 size_t** channel_reorder_nolfe ;
 int decode_grid (TYPE_2__*,int,int) ;
 int decode_part_stereo (TYPE_2__*,int,int) ;
 int ff_dca_lfe_iir ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int ff_side_data_update_matrix_encoding (TYPE_3__*,int ) ;
 int filter_ts (TYPE_2__*,int,int) ;
 size_t* lfe_index ;
 int random_ts (TYPE_2__*,int,int) ;
 int stub1 (float*,int ,int ,int ,int) ;
 int transform_channel (TYPE_2__*,int,float*) ;

int ff_dca_lbr_filter_frame(DCALbrDecoder *s, AVFrame *frame)
{
    AVCodecContext *avctx = s->avctx;
    int i, ret, nchannels, ch_conf = (s->ch_mask & 0x7) - 1;
    const int8_t *reorder;

    avctx->channel_layout = channel_layouts[ch_conf];
    avctx->channels = nchannels = channel_counts[ch_conf];
    avctx->sample_rate = s->sample_rate;
    avctx->sample_fmt = AV_SAMPLE_FMT_FLTP;
    avctx->bits_per_raw_sample = 0;
    avctx->profile = FF_PROFILE_DTS_EXPRESS;
    avctx->bit_rate = s->bit_rate_scaled;

    if (s->flags & LBR_FLAG_LFE_PRESENT) {
        avctx->channel_layout |= AV_CH_LOW_FREQUENCY;
        avctx->channels++;
        reorder = channel_reorder_lfe[ch_conf];
    } else {
        reorder = channel_reorder_nolfe[ch_conf];
    }

    frame->nb_samples = 1024 << s->freq_range;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;


    for (i = 0; i < (s->nchannels + 1) / 2; i++) {
        int ch1 = i * 2;
        int ch2 = FFMIN(ch1 + 1, s->nchannels - 1);

        decode_grid(s, ch1, ch2);

        random_ts(s, ch1, ch2);

        filter_ts(s, ch1, ch2);

        if (ch1 != ch2 && (s->part_stereo_pres & (1 << ch1)))
            decode_part_stereo(s, ch1, ch2);

        if (ch1 < nchannels)
            transform_channel(s, ch1, (float *)frame->extended_data[reorder[ch1]]);

        if (ch1 != ch2 && ch2 < nchannels)
            transform_channel(s, ch2, (float *)frame->extended_data[reorder[ch2]]);
    }


    if (s->flags & LBR_FLAG_LFE_PRESENT) {
        s->dcadsp->lfe_iir((float *)frame->extended_data[lfe_index[ch_conf]],
                           s->lfe_data, ff_dca_lfe_iir,
                           s->lfe_history, 16 << s->freq_range);
    }

    if ((ret = ff_side_data_update_matrix_encoding(frame, AV_MATRIX_ENCODING_NONE)) < 0)
        return ret;

    return 0;
}
