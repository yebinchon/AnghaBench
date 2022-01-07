
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int npcmblocks; int es_format; int sumdiff_surround; int sumdiff_front; int source_pcm_res; int filter_perfect; int predictor_history; int lfe_present; int sync_ssf; int ext_audio_present; int ext_audio_type; int aux_present; int ts_present; int drc_present; int bit_rate; int sample_rate; int audio_mode; int frame_size; int crc_present; int avctx; int gb; } ;
struct TYPE_5__ {int npcmblocks; size_t sr_code; size_t br_code; size_t pcmr_code; int sumdiff_surround; int sumdiff_front; int filter_perfect; int predictor_history; int lfe_present; int sync_ssf; int ext_audio_present; int ext_audio_type; int aux_present; int ts_present; int drc_present; int audio_mode; int frame_size; int crc_present; int normal_frame; int member_0; } ;
typedef TYPE_1__ DCACoreFrameHeader ;
typedef TYPE_2__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,...) ;
 int * avpriv_dca_sample_rates ;
 int * ff_dca_bit_rates ;
 int * ff_dca_bits_per_sample ;
 int ff_dca_parse_core_frame_header (TYPE_1__*,int *) ;

__attribute__((used)) static int parse_frame_header(DCACoreDecoder *s)
{
    DCACoreFrameHeader h = { 0 };
    int err = ff_dca_parse_core_frame_header(&h, &s->gb);

    if (err < 0) {
        switch (err) {
        case 134:
            av_log(s->avctx, AV_LOG_ERROR, "Deficit samples are not supported\n");
            return h.normal_frame ? AVERROR_INVALIDDATA : AVERROR_PATCHWELCOME;

        case 131:
            av_log(s->avctx, AV_LOG_ERROR, "Unsupported number of PCM sample blocks (%d)\n", h.npcmblocks);
            return (h.npcmblocks < 6 || h.normal_frame) ? AVERROR_INVALIDDATA : AVERROR_PATCHWELCOME;

        case 133:
            av_log(s->avctx, AV_LOG_ERROR, "Invalid core frame size (%d bytes)\n", h.frame_size);
            return AVERROR_INVALIDDATA;

        case 135:
            av_log(s->avctx, AV_LOG_ERROR, "Unsupported audio channel arrangement (%d)\n", h.audio_mode);
            return AVERROR_PATCHWELCOME;

        case 128:
            av_log(s->avctx, AV_LOG_ERROR, "Invalid core audio sampling frequency\n");
            return AVERROR_INVALIDDATA;

        case 129:
            av_log(s->avctx, AV_LOG_ERROR, "Reserved bit set\n");
            return AVERROR_INVALIDDATA;

        case 132:
            av_log(s->avctx, AV_LOG_ERROR, "Invalid low frequency effects flag\n");
            return AVERROR_INVALIDDATA;

        case 130:
            av_log(s->avctx, AV_LOG_ERROR, "Invalid source PCM resolution\n");
            return AVERROR_INVALIDDATA;

        default:
            av_log(s->avctx, AV_LOG_ERROR, "Unknown core frame header error\n");
            return AVERROR_INVALIDDATA;
        }
    }

    s->crc_present = h.crc_present;
    s->npcmblocks = h.npcmblocks;
    s->frame_size = h.frame_size;
    s->audio_mode = h.audio_mode;
    s->sample_rate = avpriv_dca_sample_rates[h.sr_code];
    s->bit_rate = ff_dca_bit_rates[h.br_code];
    s->drc_present = h.drc_present;
    s->ts_present = h.ts_present;
    s->aux_present = h.aux_present;
    s->ext_audio_type = h.ext_audio_type;
    s->ext_audio_present = h.ext_audio_present;
    s->sync_ssf = h.sync_ssf;
    s->lfe_present = h.lfe_present;
    s->predictor_history = h.predictor_history;
    s->filter_perfect = h.filter_perfect;
    s->source_pcm_res = ff_dca_bits_per_sample[h.pcmr_code];
    s->es_format = h.pcmr_code & 1;
    s->sumdiff_front = h.sumdiff_front;
    s->sumdiff_surround = h.sumdiff_surround;

    return 0;
}
