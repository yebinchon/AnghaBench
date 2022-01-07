
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int bits; int table; } ;
struct TYPE_13__ {TYPE_2__* channels; TYPE_1__* waves_info; } ;
struct TYPE_12__ {int * tones_info; } ;
struct TYPE_11__ {int num_tone_bands; scalar_t__* tone_master; scalar_t__* tone_sharing; scalar_t__ tones_index; scalar_t__* invert_phase; void* amplitude_mode; int * waves; void* tones_present; } ;
typedef int GetBitContext ;
typedef TYPE_3__ Atrac3pChanUnitCtx ;
typedef int AVCodecContext ;


 int ATRAC3P_SUBBANDS ;
 int AVERROR_PATCHWELCOME ;
 int Atrac3pWavesData ;
 int FFSWAP (int ,int ,int ) ;
 int avpriv_report_missing_feature (int *,char*) ;
 int decode_band_numwavs (int *,TYPE_3__*,int,int*,int *) ;
 int decode_tones_amplitude (int *,TYPE_3__*,int,int*) ;
 int decode_tones_envelope (int *,TYPE_3__*,int,int*) ;
 int decode_tones_frequency (int *,TYPE_3__*,int,int*) ;
 int decode_tones_phase (int *,TYPE_3__*,int,int*) ;
 void* get_bits1 (int *) ;
 int get_subband_flags (int *,scalar_t__*,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int memset (int *,int ,int) ;
 TYPE_4__* tone_vlc_tabs ;

__attribute__((used)) static int decode_tones_info(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                             int num_channels, AVCodecContext *avctx)
{
    int ch_num, i, ret;
    int band_has_tones[16];

    for (ch_num = 0; ch_num < num_channels; ch_num++)
        memset(ctx->channels[ch_num].tones_info, 0,
               sizeof(*ctx->channels[ch_num].tones_info) * ATRAC3P_SUBBANDS);

    ctx->waves_info->tones_present = get_bits1(gb);
    if (!ctx->waves_info->tones_present)
        return 0;

    memset(ctx->waves_info->waves, 0, sizeof(ctx->waves_info->waves));

    ctx->waves_info->amplitude_mode = get_bits1(gb);
    if (!ctx->waves_info->amplitude_mode) {
        avpriv_report_missing_feature(avctx, "GHA amplitude mode 0");
        return AVERROR_PATCHWELCOME;
    }

    ctx->waves_info->num_tone_bands =
        get_vlc2(gb, tone_vlc_tabs[0].table,
                 tone_vlc_tabs[0].bits, 1) + 1;

    if (num_channels == 2) {
        get_subband_flags(gb, ctx->waves_info->tone_sharing, ctx->waves_info->num_tone_bands);
        get_subband_flags(gb, ctx->waves_info->tone_master, ctx->waves_info->num_tone_bands);
        get_subband_flags(gb, ctx->waves_info->invert_phase, ctx->waves_info->num_tone_bands);
    }

    ctx->waves_info->tones_index = 0;

    for (ch_num = 0; ch_num < num_channels; ch_num++) {
        for (i = 0; i < ctx->waves_info->num_tone_bands; i++)
            band_has_tones[i] = !ch_num ? 1 : !ctx->waves_info->tone_sharing[i];

        decode_tones_envelope(gb, ctx, ch_num, band_has_tones);
        if ((ret = decode_band_numwavs(gb, ctx, ch_num, band_has_tones,
                                       avctx)) < 0)
            return ret;

        decode_tones_frequency(gb, ctx, ch_num, band_has_tones);
        decode_tones_amplitude(gb, ctx, ch_num, band_has_tones);
        decode_tones_phase(gb, ctx, ch_num, band_has_tones);
    }

    if (num_channels == 2) {
        for (i = 0; i < ctx->waves_info->num_tone_bands; i++) {
            if (ctx->waves_info->tone_sharing[i])
                ctx->channels[1].tones_info[i] = ctx->channels[0].tones_info[i];

            if (ctx->waves_info->tone_master[i])
                FFSWAP(Atrac3pWavesData, ctx->channels[0].tones_info[i],
                       ctx->channels[1].tones_info[i]);
        }
    }

    return 0;
}
