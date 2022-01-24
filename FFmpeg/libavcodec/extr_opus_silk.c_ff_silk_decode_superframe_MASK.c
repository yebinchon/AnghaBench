#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum OpusBandwidth { ____Placeholder_OpusBandwidth } OpusBandwidth ;
struct TYPE_7__ {int output; scalar_t__ coded; } ;
struct TYPE_6__ {int subframes; int sflength; int flength; int bandwidth; int wb; int prev_coded_channels; int output_channels; scalar_t__ midonly; TYPE_3__* frame; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ SilkContext ;
typedef  int /*<<< orphan*/  OpusRangeCoder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int OPUS_BANDWIDTH_WIDEBAND ; 
 int /*<<< orphan*/  SILK_HISTORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,float*,float*) ; 

int FUNC8(SilkContext *s, OpusRangeCoder *rc,
                              float *output[2],
                              enum OpusBandwidth bandwidth,
                              int coded_channels,
                              int duration_ms)
{
    int active[2][6], redundancy[2];
    int nb_frames, i, j;

    if (bandwidth > OPUS_BANDWIDTH_WIDEBAND ||
        coded_channels > 2 || duration_ms > 60) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Invalid parameters passed "
               "to the SILK decoder.\n");
        return FUNC0(EINVAL);
    }

    nb_frames = 1 + (duration_ms > 20) + (duration_ms > 40);
    s->subframes = duration_ms / nb_frames / 5;         // 5ms subframes
    s->sflength  = 20 * (bandwidth + 2);
    s->flength   = s->sflength * s->subframes;
    s->bandwidth = bandwidth;
    s->wb        = bandwidth == OPUS_BANDWIDTH_WIDEBAND;

    /* make sure to flush the side channel when switching from mono to stereo */
    if (coded_channels > s->prev_coded_channels)
        FUNC6(&s->frame[1]);
    s->prev_coded_channels = coded_channels;

    /* read the LP-layer header bits */
    for (i = 0; i < coded_channels; i++) {
        for (j = 0; j < nb_frames; j++)
            active[i][j] = FUNC3(rc, 1);

        redundancy[i] = FUNC3(rc, 1);
        if (redundancy[i]) {
            FUNC2(s->avctx, "LBRR frames");
            return AVERROR_PATCHWELCOME;
        }
    }

    for (i = 0; i < nb_frames; i++) {
        for (j = 0; j < coded_channels && !s->midonly; j++)
            FUNC5(s, rc, i, j, coded_channels, active[j][i], active[1][i]);

        /* reset the side channel if it is not coded */
        if (s->midonly && s->frame[1].coded)
            FUNC6(&s->frame[1]);

        if (coded_channels == 1 || s->output_channels == 1) {
            for (j = 0; j < s->output_channels; j++) {
                FUNC4(output[j] + i * s->flength,
                       s->frame[0].output + SILK_HISTORY - s->flength - 2,
                       s->flength * sizeof(float));
            }
        } else {
            FUNC7(s, output[0] + i * s->flength, output[1] + i * s->flength);
        }

        s->midonly        = 0;
    }

    return nb_frames * s->flength;
}