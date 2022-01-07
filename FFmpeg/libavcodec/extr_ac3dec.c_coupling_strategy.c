
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int fbw_channels; int channel_mode; int* channel_in_cpl; int spx_src_start_freq; int* start_freq; int* end_freq; int* first_cpl_coords; void* phase_flags_in_use; int eac3; int first_cpl_leak; int cpl_band_struct; int cpl_band_sizes; int num_cpl_bands; int avctx; scalar_t__ spx_in_use; void** cpl_in_use; int gbc; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AC3DecodeContext ;


 int AC3_CHMODE_STEREO ;
 int AC3_MAX_CHANNELS ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 size_t CPL_CH ;
 int av_log (int ,int ,char*,...) ;
 int avpriv_request_sample (int ,char*) ;
 int decode_band_structure (int *,int,int ,int ,int,int,int ,int *,int ,int ,int) ;
 int ff_eac3_default_cpl_band_struct ;
 int get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int memset (int *,int,int ) ;

__attribute__((used)) static inline int coupling_strategy(AC3DecodeContext *s, int blk,
                                    uint8_t *bit_alloc_stages)
{
    GetBitContext *bc = &s->gbc;
    int fbw_channels = s->fbw_channels;
    int channel_mode = s->channel_mode;
    int ch;

    memset(bit_alloc_stages, 3, AC3_MAX_CHANNELS);
    if (!s->eac3)
        s->cpl_in_use[blk] = get_bits1(bc);
    if (s->cpl_in_use[blk]) {

        int cpl_start_subband, cpl_end_subband;

        if (channel_mode < AC3_CHMODE_STEREO) {
            av_log(s->avctx, AV_LOG_ERROR, "coupling not allowed in mono or dual-mono\n");
            return AVERROR_INVALIDDATA;
        }


        if (s->eac3 && get_bits1(bc)) {

            avpriv_request_sample(s->avctx, "Enhanced coupling");
            return AVERROR_PATCHWELCOME;
        }


        if (s->eac3 && s->channel_mode == AC3_CHMODE_STEREO) {
            s->channel_in_cpl[1] = 1;
            s->channel_in_cpl[2] = 1;
        } else {
            for (ch = 1; ch <= fbw_channels; ch++)
                s->channel_in_cpl[ch] = get_bits1(bc);
        }


        if (channel_mode == AC3_CHMODE_STEREO)
            s->phase_flags_in_use = get_bits1(bc);


        cpl_start_subband = get_bits(bc, 4);
        cpl_end_subband = s->spx_in_use ? (s->spx_src_start_freq - 37) / 12 :
                                          get_bits(bc, 4) + 3;
        if (cpl_start_subband >= cpl_end_subband) {
            av_log(s->avctx, AV_LOG_ERROR, "invalid coupling range (%d >= %d)\n",
                   cpl_start_subband, cpl_end_subband);
            return AVERROR_INVALIDDATA;
        }
        s->start_freq[CPL_CH] = cpl_start_subband * 12 + 37;
        s->end_freq[CPL_CH] = cpl_end_subband * 12 + 37;

        decode_band_structure(bc, blk, s->eac3, 0, cpl_start_subband,
                              cpl_end_subband,
                              ff_eac3_default_cpl_band_struct,
                              &s->num_cpl_bands, s->cpl_band_sizes,
                              s->cpl_band_struct, sizeof(s->cpl_band_struct));
    } else {

        for (ch = 1; ch <= fbw_channels; ch++) {
            s->channel_in_cpl[ch] = 0;
            s->first_cpl_coords[ch] = 1;
        }
        s->first_cpl_leak = s->eac3;
        s->phase_flags_in_use = 0;
    }

    return 0;
}
