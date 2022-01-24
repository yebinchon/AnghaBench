#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wavesynth_context {scalar_t__ cur_ts; scalar_t__ next_ts; } ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_10__ {int channels; struct wavesynth_context* priv_data; } ;
struct TYPE_9__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_8__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  EINVAL ; 
 int WS_MAX_CHANNELS ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wavesynth_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wavesynth_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wavesynth_context*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avc, void *rframe, int *rgot_frame,
                            AVPacket *packet)
{
    struct wavesynth_context *ws = avc->priv_data;
    AVFrame *frame = rframe;
    int64_t ts;
    int duration;
    int s, c, r;
    int16_t *pcm;
    int32_t channels[WS_MAX_CHANNELS];

    *rgot_frame = 0;
    if (packet->size != 12)
        return AVERROR_INVALIDDATA;
    ts = FUNC2(packet->data);
    if (ts != ws->cur_ts)
        FUNC6(ws, ts);
    duration = FUNC1(packet->data + 8);
    if (duration <= 0)
        return FUNC0(EINVAL);
    frame->nb_samples = duration;
    r = FUNC3(avc, frame, 0);
    if (r < 0)
        return r;
    pcm = (int16_t *)frame->data[0];
    for (s = 0; s < duration; s++, ts++) {
        FUNC4(channels, 0, avc->channels * sizeof(*channels));
        if (ts >= ws->next_ts)
            FUNC5(ws, ts);
        FUNC7(ws, ts, channels);
        for (c = 0; c < avc->channels; c++)
            *(pcm++) = channels[c] >> 16;
    }
    ws->cur_ts += duration;
    *rgot_frame = 1;
    return packet->size;
}