
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {unsigned int objecttype; int sample_rate_index; int pce_size; int write_adts; int pce_data; int channel_conf; } ;
struct TYPE_5__ {unsigned int object_type; int sampling_index; int chan_config; } ;
typedef int PutBitContext ;
typedef TYPE_1__ MPEG4AudioConfig ;
typedef int GetBitContext ;
typedef int AVFormatContext ;
typedef TYPE_2__ ADTSContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int MAX_PCE_SIZE ;
 int av_log (int *,int ,char*,...) ;
 int avpriv_mpeg4audio_get_config2 (TYPE_1__*,int const*,int,int,int *) ;
 int ff_copy_pce_data (int *,int *) ;
 int flush_put_bits (int *) ;
 scalar_t__ get_bits (int *,int) ;
 int init_get_bits (int *,int const*,int) ;
 int init_put_bits (int *,int ,int ) ;
 int put_bits (int *,int,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int adts_decode_extradata(AVFormatContext *s, ADTSContext *adts, const uint8_t *buf, int size)
{
    GetBitContext gb;
    PutBitContext pb;
    MPEG4AudioConfig m4ac;
    int off;

    init_get_bits(&gb, buf, size * 8);
    off = avpriv_mpeg4audio_get_config2(&m4ac, buf, size, 1, s);
    if (off < 0)
        return off;
    skip_bits_long(&gb, off);
    adts->objecttype = m4ac.object_type - 1;
    adts->sample_rate_index = m4ac.sampling_index;
    adts->channel_conf = m4ac.chan_config;

    if (adts->objecttype > 3U) {
        av_log(s, AV_LOG_ERROR, "MPEG-4 AOT %d is not allowed in ADTS\n", adts->objecttype+1);
        return AVERROR_INVALIDDATA;
    }
    if (adts->sample_rate_index == 15) {
        av_log(s, AV_LOG_ERROR, "Escape sample rate index illegal in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (get_bits(&gb, 1)) {
        av_log(s, AV_LOG_ERROR, "960/120 MDCT window is not allowed in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (get_bits(&gb, 1)) {
        av_log(s, AV_LOG_ERROR, "Scalable configurations are not allowed in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (get_bits(&gb, 1)) {
        av_log(s, AV_LOG_ERROR, "Extension flag is not allowed in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (!adts->channel_conf) {
        init_put_bits(&pb, adts->pce_data, MAX_PCE_SIZE);

        put_bits(&pb, 3, 5);
        adts->pce_size = (ff_copy_pce_data(&pb, &gb) + 3) / 8;
        flush_put_bits(&pb);
    }

    adts->write_adts = 1;

    return 0;
}
