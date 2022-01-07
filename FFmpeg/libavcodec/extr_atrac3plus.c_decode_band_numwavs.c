
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int bits; int table; } ;
struct TYPE_14__ {int frame_number; } ;
struct TYPE_13__ {TYPE_2__* waves_info; TYPE_1__* channels; } ;
struct TYPE_12__ {int num_wavs; int start_index; } ;
struct TYPE_11__ {int num_tone_bands; int tones_index; } ;
struct TYPE_10__ {TYPE_3__* tones_info; } ;
typedef int GetBitContext ;
typedef TYPE_3__ Atrac3pWavesData ;
typedef TYPE_4__ Atrac3pChanUnitCtx ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_5__*,int ,char*,int,int ) ;
 void* get_bits (int *,int) ;
 void* get_vlc2 (int *,int ,int ,int) ;
 int sign_extend (int,int) ;
 TYPE_6__* tone_vlc_tabs ;

__attribute__((used)) static int decode_band_numwavs(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                               int ch_num, int band_has_tones[],
                               AVCodecContext *avctx)
{
    int mode, sb, delta;
    Atrac3pWavesData *dst = ctx->channels[ch_num].tones_info;
    Atrac3pWavesData *ref = ctx->channels[0].tones_info;

    mode = get_bits(gb, ch_num + 1);
    switch (mode) {
    case 0:
        for (sb = 0; sb < ctx->waves_info->num_tone_bands; sb++)
            if (band_has_tones[sb])
                dst[sb].num_wavs = get_bits(gb, 4);
        break;
    case 1:
        for (sb = 0; sb < ctx->waves_info->num_tone_bands; sb++)
            if (band_has_tones[sb])
                dst[sb].num_wavs =
                    get_vlc2(gb, tone_vlc_tabs[1].table,
                             tone_vlc_tabs[1].bits, 1);
        break;
    case 2:
        for (sb = 0; sb < ctx->waves_info->num_tone_bands; sb++)
            if (band_has_tones[sb]) {
                delta = get_vlc2(gb, tone_vlc_tabs[2].table,
                                 tone_vlc_tabs[2].bits, 1);
                delta = sign_extend(delta, 3);
                dst[sb].num_wavs = (ref[sb].num_wavs + delta) & 0xF;
            }
        break;
    case 3:
        for (sb = 0; sb < ctx->waves_info->num_tone_bands; sb++)
            if (band_has_tones[sb])
                dst[sb].num_wavs = ref[sb].num_wavs;
        break;
    }


    for (sb = 0; sb < ctx->waves_info->num_tone_bands; sb++)
        if (band_has_tones[sb]) {
            if (ctx->waves_info->tones_index + dst[sb].num_wavs > 48) {
                av_log(avctx, AV_LOG_ERROR,
                       "Too many tones: %d (max. 48), frame: %d!\n",
                       ctx->waves_info->tones_index + dst[sb].num_wavs,
                       avctx->frame_number);
                return AVERROR_INVALIDDATA;
            }
            dst[sb].start_index = ctx->waves_info->tones_index;
            ctx->waves_info->tones_index += dst[sb].num_wavs;
        }

    return 0;
}
