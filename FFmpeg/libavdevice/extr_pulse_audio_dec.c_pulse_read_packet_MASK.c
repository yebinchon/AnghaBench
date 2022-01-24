#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pa_usec_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_11__ {scalar_t__ audio_codec_id; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  pts; } ;
struct TYPE_9__ {int channels; int last_period; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  stream; int /*<<< orphan*/  timefilter; scalar_t__ wallclock; } ;
typedef  TYPE_1__ PulseData ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int DEFAULT_CODEC_ID ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unlock_and_fail ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s, AVPacket *pkt)
{
    PulseData *pd  = s->priv_data;
    int ret;
    size_t read_length;
    const void *read_data = NULL;
    int64_t dts;
    pa_usec_t latency;
    int negative;

    FUNC14(pd->mainloop);

    FUNC1(pd, ret, unlock_and_fail);

    while (!read_data) {
        int r;

        r = FUNC12(pd->stream, &read_data, &read_length);
        FUNC2(ret, r == 0, unlock_and_fail);

        if (read_length <= 0) {
            FUNC16(pd->mainloop);
            FUNC1(pd, ret, unlock_and_fail);
        } else if (!read_data) {
            /* There's a hole in the stream, skip it. We could generate
                * silence, but that wouldn't work for compressed streams. */
            r = FUNC10(pd->stream);
            FUNC2(ret, r == 0, unlock_and_fail);
        }
    }

    if (FUNC6(pkt, read_length) < 0) {
        ret = FUNC0(ENOMEM);
        goto unlock_and_fail;
    }

    dts = FUNC4();
    FUNC9(FUNC13(pd->stream, NULL, NULL));

    if (FUNC11(pd->stream, &latency, &negative) >= 0) {
        enum AVCodecID codec_id =
            s->audio_codec_id == AV_CODEC_ID_NONE ? DEFAULT_CODEC_ID : s->audio_codec_id;
        int frame_size = ((FUNC3(codec_id) >> 3) * pd->channels);
        int frame_duration = read_length / frame_size;


        if (negative) {
            dts += latency;
        } else
            dts -= latency;
        if (pd->wallclock)
            pkt->pts = FUNC7(pd->timefilter, dts, pd->last_period);

        pd->last_period = frame_duration;
    } else {
        FUNC5(s, AV_LOG_WARNING, "pa_stream_get_latency() failed\n");
    }

    FUNC8(pkt->data, read_data, read_length);
    FUNC10(pd->stream);

    FUNC15(pd->mainloop);
    return 0;

unlock_and_fail:
    FUNC15(pd->mainloop);
    return ret;
}