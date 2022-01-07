
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum OpusBandwidth { ____Placeholder_OpusBandwidth } OpusBandwidth ;
struct TYPE_7__ {int output; scalar_t__ coded; } ;
struct TYPE_6__ {int subframes; int sflength; int flength; int bandwidth; int wb; int prev_coded_channels; int output_channels; scalar_t__ midonly; TYPE_3__* frame; int avctx; } ;
typedef TYPE_1__ SilkContext ;
typedef int OpusRangeCoder ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int OPUS_BANDWIDTH_WIDEBAND ;
 int SILK_HISTORY ;
 int av_log (int ,int ,char*) ;
 int avpriv_report_missing_feature (int ,char*) ;
 int ff_opus_rc_dec_log (int *,int) ;
 int memcpy (float*,int,int) ;
 int silk_decode_frame (TYPE_1__*,int *,int,int,int,int,int) ;
 int silk_flush_frame (TYPE_3__*) ;
 int silk_unmix_ms (TYPE_1__*,float*,float*) ;

int ff_silk_decode_superframe(SilkContext *s, OpusRangeCoder *rc,
                              float *output[2],
                              enum OpusBandwidth bandwidth,
                              int coded_channels,
                              int duration_ms)
{
    int active[2][6], redundancy[2];
    int nb_frames, i, j;

    if (bandwidth > OPUS_BANDWIDTH_WIDEBAND ||
        coded_channels > 2 || duration_ms > 60) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid parameters passed "
               "to the SILK decoder.\n");
        return AVERROR(EINVAL);
    }

    nb_frames = 1 + (duration_ms > 20) + (duration_ms > 40);
    s->subframes = duration_ms / nb_frames / 5;
    s->sflength = 20 * (bandwidth + 2);
    s->flength = s->sflength * s->subframes;
    s->bandwidth = bandwidth;
    s->wb = bandwidth == OPUS_BANDWIDTH_WIDEBAND;


    if (coded_channels > s->prev_coded_channels)
        silk_flush_frame(&s->frame[1]);
    s->prev_coded_channels = coded_channels;


    for (i = 0; i < coded_channels; i++) {
        for (j = 0; j < nb_frames; j++)
            active[i][j] = ff_opus_rc_dec_log(rc, 1);

        redundancy[i] = ff_opus_rc_dec_log(rc, 1);
        if (redundancy[i]) {
            avpriv_report_missing_feature(s->avctx, "LBRR frames");
            return AVERROR_PATCHWELCOME;
        }
    }

    for (i = 0; i < nb_frames; i++) {
        for (j = 0; j < coded_channels && !s->midonly; j++)
            silk_decode_frame(s, rc, i, j, coded_channels, active[j][i], active[1][i]);


        if (s->midonly && s->frame[1].coded)
            silk_flush_frame(&s->frame[1]);

        if (coded_channels == 1 || s->output_channels == 1) {
            for (j = 0; j < s->output_channels; j++) {
                memcpy(output[j] + i * s->flength,
                       s->frame[0].output + SILK_HISTORY - s->flength - 2,
                       s->flength * sizeof(float));
            }
        } else {
            silk_unmix_ms(s, output[0] + i * s->flength, output[1] + i * s->flength);
        }

        s->midonly = 0;
    }

    return nb_frames * s->flength;
}
