
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sampling_index; int object_type; int sbr; int ps; int sample_rate; int chan_config; } ;
typedef TYPE_1__ MPEG4AudioConfig ;
typedef int GetBitContext ;
typedef int AVCodecContext ;
typedef int AACContext ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOSYS ;
 int av_log (int *,int ,char*,int) ;
 int avpriv_report_missing_feature (int *,char*,char*,int) ;
 int decode_eld_specific_config (int *,int *,int *,TYPE_1__*,int ) ;
 int decode_ga_specific_config (int *,int *,int *,int,TYPE_1__*,int ) ;
 int ff_dlog (int *,char*,int,int ,int,int ,int,int ) ;
 int ff_mpeg4audio_get_config_gb (TYPE_1__*,int *,int,int *) ;
 int get_bits_count (int *) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int decode_audio_specific_config_gb(AACContext *ac,
                                           AVCodecContext *avctx,
                                           MPEG4AudioConfig *m4ac,
                                           GetBitContext *gb,
                                           int get_bit_alignment,
                                           int sync_extension)
{
    int i, ret;
    GetBitContext gbc = *gb;

    if ((i = ff_mpeg4audio_get_config_gb(m4ac, &gbc, sync_extension, avctx)) < 0)
        return AVERROR_INVALIDDATA;

    if (m4ac->sampling_index > 12) {
        av_log(avctx, AV_LOG_ERROR,
               "invalid sampling rate index %d\n",
               m4ac->sampling_index);
        return AVERROR_INVALIDDATA;
    }
    if (m4ac->object_type == 128 &&
        (m4ac->sampling_index < 3 || m4ac->sampling_index > 7)) {
        av_log(avctx, AV_LOG_ERROR,
               "invalid low delay sampling rate index %d\n",
               m4ac->sampling_index);
        return AVERROR_INVALIDDATA;
    }

    skip_bits_long(gb, i);

    switch (m4ac->object_type) {
    case 132:
    case 134:
    case 131:
    case 133:
    case 129:
    case 128:
        if ((ret = decode_ga_specific_config(ac, avctx, gb, get_bit_alignment,
                                            m4ac, m4ac->chan_config)) < 0)
            return ret;
        break;
    case 130:
        if ((ret = decode_eld_specific_config(ac, avctx, gb,
                                              m4ac, m4ac->chan_config)) < 0)
            return ret;
        break;
    default:
        avpriv_report_missing_feature(avctx,
                                      "Audio object type %s%d",
                                      m4ac->sbr == 1 ? "SBR+" : "",
                                      m4ac->object_type);
        return AVERROR(ENOSYS);
    }

    ff_dlog(avctx,
            "AOT %d chan config %d sampling index %d (%d) SBR %d PS %d\n",
            m4ac->object_type, m4ac->chan_config, m4ac->sampling_index,
            m4ac->sample_rate, m4ac->sbr,
            m4ac->ps);

    return get_bits_count(gb);
}
