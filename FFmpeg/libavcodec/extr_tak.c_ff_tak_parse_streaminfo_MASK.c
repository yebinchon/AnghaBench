#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int channels; scalar_t__ sample_rate; int /*<<< orphan*/  frame_samples; int /*<<< orphan*/  ch_layout; scalar_t__ bps; void* data_type; int /*<<< orphan*/  samples; void* codec; } ;
typedef  TYPE_1__ TAKStreamInfo ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TAK_BPS_MIN ; 
 int TAK_CHANNELS_MIN ; 
 int /*<<< orphan*/  TAK_ENCODER_CODEC_BITS ; 
 int /*<<< orphan*/  TAK_ENCODER_PROFILE_BITS ; 
 int /*<<< orphan*/  TAK_FORMAT_BPS_BITS ; 
 int /*<<< orphan*/  TAK_FORMAT_CHANNEL_BITS ; 
 int /*<<< orphan*/  TAK_FORMAT_CH_LAYOUT_BITS ; 
 int /*<<< orphan*/  TAK_FORMAT_DATA_TYPE_BITS ; 
 int /*<<< orphan*/  TAK_FORMAT_SAMPLE_RATE_BITS ; 
 int /*<<< orphan*/  TAK_FORMAT_VALID_BITS ; 
 scalar_t__ TAK_SAMPLE_RATE_MIN ; 
 int /*<<< orphan*/  TAK_SIZE_FRAME_DURATION_BITS ; 
 int /*<<< orphan*/  TAK_SIZE_SAMPLES_NUM_BITS ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tak_channel_layouts ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

void FUNC6(TAKStreamInfo *s, GetBitContext *gb)
{
    uint64_t channel_mask = 0;
    int frame_type, i;

    s->codec = FUNC1(gb, TAK_ENCODER_CODEC_BITS);
    FUNC4(gb, TAK_ENCODER_PROFILE_BITS);

    frame_type = FUNC1(gb, TAK_SIZE_FRAME_DURATION_BITS);
    s->samples = FUNC3(gb, TAK_SIZE_SAMPLES_NUM_BITS);

    s->data_type   = FUNC1(gb, TAK_FORMAT_DATA_TYPE_BITS);
    s->sample_rate = FUNC1(gb, TAK_FORMAT_SAMPLE_RATE_BITS) +
                     TAK_SAMPLE_RATE_MIN;
    s->bps         = FUNC1(gb, TAK_FORMAT_BPS_BITS) +
                     TAK_BPS_MIN;
    s->channels    = FUNC1(gb, TAK_FORMAT_CHANNEL_BITS) +
                     TAK_CHANNELS_MIN;

    if (FUNC2(gb)) {
        FUNC4(gb, TAK_FORMAT_VALID_BITS);
        if (FUNC2(gb)) {
            for (i = 0; i < s->channels; i++) {
                int value = FUNC1(gb, TAK_FORMAT_CH_LAYOUT_BITS);

                if (value < FUNC0(tak_channel_layouts))
                    channel_mask |= tak_channel_layouts[value];
            }
        }
    }

    s->ch_layout     = channel_mask;
    s->frame_samples = FUNC5(s->sample_rate, frame_type);
}