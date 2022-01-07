
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sr_shift; int sr_code; } ;
struct TYPE_10__ {int bitstream_id; size_t lfe_on; size_t channels; size_t fbw_channels; size_t lfe_ch; int center_mix_level_ltrt; int surround_mix_level_ltrt; int* end_freq; int* num_exp_groups; int eac3; int snr_offset_strategy; int block_switch_syntax; int dither_flag_syntax; int bit_allocation_syntax; int dba_syntax; int skip_syntax; int avctx; int channel_uses_aht; scalar_t__ first_cpl_leak; scalar_t__ fast_gain_syntax; scalar_t__* channel_in_cpl; scalar_t__* start_freq; int dolby_headphone_mode; int dolby_surround_ex_mode; int dolby_surround_mode; int substreamid; int frame_type; int num_blocks; scalar_t__ lfe_mix_level_exists; int surround_mix_level; int center_mix_level; int preferred_downmix; int superframe_size; scalar_t__ frame_size; int bit_rate; int sample_rate; TYPE_1__ bit_alloc_params; int channel_mode; int bitstream_mode; int gbc; } ;
struct TYPE_9__ {int bitstream_id; size_t lfe_on; size_t channels; int dolby_surround_mode; int substreamid; int frame_type; int num_blocks; int surround_mix_level; int center_mix_level; scalar_t__ frame_size; int bit_rate; int sample_rate; int sr_shift; int channel_mode; int bitstream_mode; int sr_code; } ;
typedef TYPE_2__ AC3HeaderInfo ;
typedef TYPE_3__ AC3DecodeContext ;


 int AC3_DHEADPHONMOD_NOTINDICATED ;
 int AC3_DMIXMOD_NOTINDICATED ;
 int AC3_DSUREXMOD_NOTINDICATED ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ CONFIG_EAC3_DECODER ;
 int ENOSYS ;
 int ac3_parse_header (TYPE_3__*) ;
 int av_log (int ,int ,char*) ;
 int ff_ac3_parse_header (int *,TYPE_2__*) ;
 int ff_eac3_parse_header (TYPE_3__*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int parse_frame_header(AC3DecodeContext *s)
{
    AC3HeaderInfo hdr;
    int err;

    err = ff_ac3_parse_header(&s->gbc, &hdr);
    if (err)
        return err;


    s->bit_alloc_params.sr_code = hdr.sr_code;
    s->bitstream_id = hdr.bitstream_id;
    s->bitstream_mode = hdr.bitstream_mode;
    s->channel_mode = hdr.channel_mode;
    s->lfe_on = hdr.lfe_on;
    s->bit_alloc_params.sr_shift = hdr.sr_shift;
    s->sample_rate = hdr.sample_rate;
    s->bit_rate = hdr.bit_rate;
    s->channels = hdr.channels;
    s->fbw_channels = s->channels - s->lfe_on;
    s->lfe_ch = s->fbw_channels + 1;
    s->frame_size = hdr.frame_size;
    s->superframe_size += hdr.frame_size;
    s->preferred_downmix = AC3_DMIXMOD_NOTINDICATED;
    s->center_mix_level = hdr.center_mix_level;
    s->center_mix_level_ltrt = 4;
    s->surround_mix_level = hdr.surround_mix_level;
    s->surround_mix_level_ltrt = 4;
    s->lfe_mix_level_exists = 0;
    s->num_blocks = hdr.num_blocks;
    s->frame_type = hdr.frame_type;
    s->substreamid = hdr.substreamid;
    s->dolby_surround_mode = hdr.dolby_surround_mode;
    s->dolby_surround_ex_mode = AC3_DSUREXMOD_NOTINDICATED;
    s->dolby_headphone_mode = AC3_DHEADPHONMOD_NOTINDICATED;

    if (s->lfe_on) {
        s->start_freq[s->lfe_ch] = 0;
        s->end_freq[s->lfe_ch] = 7;
        s->num_exp_groups[s->lfe_ch] = 2;
        s->channel_in_cpl[s->lfe_ch] = 0;
    }

    if (s->bitstream_id <= 10) {
        s->eac3 = 0;
        s->snr_offset_strategy = 2;
        s->block_switch_syntax = 1;
        s->dither_flag_syntax = 1;
        s->bit_allocation_syntax = 1;
        s->fast_gain_syntax = 0;
        s->first_cpl_leak = 0;
        s->dba_syntax = 1;
        s->skip_syntax = 1;
        memset(s->channel_uses_aht, 0, sizeof(s->channel_uses_aht));
        return ac3_parse_header(s);
    } else if (CONFIG_EAC3_DECODER) {
        s->eac3 = 1;
        return ff_eac3_parse_header(s);
    } else {
        av_log(s->avctx, AV_LOG_ERROR, "E-AC-3 support not compiled in\n");
        return AVERROR(ENOSYS);
    }
}
