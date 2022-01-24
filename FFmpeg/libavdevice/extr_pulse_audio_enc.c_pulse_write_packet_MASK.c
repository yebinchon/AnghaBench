#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  writable_size ;
typedef  scalar_t__ int64_t ;
struct TYPE_18__ {TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_17__ {scalar_t__ dts; scalar_t__ duration; scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {int member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_15__ {int /*<<< orphan*/  time_base; TYPE_1__* codecpar; } ;
struct TYPE_14__ {scalar_t__ timestamp; scalar_t__ minreq; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  stream; scalar_t__ nonblocking; } ;
struct TYPE_13__ {scalar_t__ channels; int /*<<< orphan*/  format; int /*<<< orphan*/  sample_rate; } ;
typedef  TYPE_2__ PulseData ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_DEV_TO_APP_BUFFER_WRITABLE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  PA_SEEK_RELATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *h, AVPacket *pkt)
{
    PulseData *s = h->priv_data;
    int ret;
    int64_t writable_size;

    if (!pkt)
        return FUNC13(s);

    if (pkt->dts != AV_NOPTS_VALUE)
        s->timestamp = pkt->dts;

    if (pkt->duration) {
        s->timestamp += pkt->duration;
    } else {
        AVStream *st = h->streams[0];
        AVRational r = { 1, st->codecpar->sample_rate };
        int64_t samples = pkt->size / (FUNC2(st->codecpar->format) * st->codecpar->channels);
        s->timestamp += FUNC4(samples, r, st->time_base);
    }

    FUNC10(s->mainloop);
    if (!FUNC1(FUNC6(s->stream))) {
        FUNC3(s, AV_LOG_ERROR, "PulseAudio stream is in invalid state.\n");
        goto fail;
    }
    while (FUNC7(s->stream) < s->minreq) {
        if (s->nonblocking) {
            FUNC11(s->mainloop);
            return FUNC0(EAGAIN);
        } else
            FUNC12(s->mainloop);
    }

    if ((ret = FUNC8(s->stream, pkt->data, pkt->size, NULL, 0, PA_SEEK_RELATIVE)) < 0) {
        FUNC3(s, AV_LOG_ERROR, "pa_stream_write failed: %s\n", FUNC9(ret));
        goto fail;
    }
    if ((writable_size = FUNC7(s->stream)) >= s->minreq)
        FUNC5(h, AV_DEV_TO_APP_BUFFER_WRITABLE, &writable_size, sizeof(writable_size));

    FUNC11(s->mainloop);

    return 0;
  fail:
    FUNC11(s->mainloop);
    return AVERROR_EXTERNAL;
}