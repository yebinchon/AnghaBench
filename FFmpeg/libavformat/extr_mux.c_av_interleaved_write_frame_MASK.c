#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int debug; TYPE_2__* pb; TYPE_3__** streams; TYPE_1__* oformat; } ;
struct TYPE_27__ {size_t stream_index; scalar_t__ dts; scalar_t__ pts; int /*<<< orphan*/  size; } ;
struct TYPE_26__ {int /*<<< orphan*/  nb_frames; } ;
struct TYPE_25__ {int error; } ;
struct TYPE_24__ {int flags; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_NOTIMESTAMPS ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int FF_FDEBUG_TS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_5__*,TYPE_3__*,TYPE_4__*) ; 
 int FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC7 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC10 (TYPE_5__*,TYPE_4__*) ; 

int FUNC11(AVFormatContext *s, AVPacket *pkt)
{
    int ret, flush = 0;

    ret = FUNC9(s, pkt);
    if (ret < 0)
        goto fail;

    if (pkt) {
        AVStream *st = s->streams[pkt->stream_index];

        ret = FUNC6(s, pkt);
        if (ret == 0)
            return 0;
        else if (ret < 0)
            goto fail;

        if (s->debug & FF_FDEBUG_TS)
            FUNC2(s, AV_LOG_DEBUG, "av_interleaved_write_frame size:%d dts:%s pts:%s\n",
                pkt->size, FUNC4(pkt->dts), FUNC4(pkt->pts));

#if FF_API_COMPUTE_PKT_FIELDS2 && FF_API_LAVF_AVCTX
        if ((ret = compute_muxer_pkt_fields(s, st, pkt)) < 0 && !(s->oformat->flags & AVFMT_NOTIMESTAMPS))
            goto fail;
#endif

        if (pkt->dts == AV_NOPTS_VALUE && !(s->oformat->flags & AVFMT_NOTIMESTAMPS)) {
            ret = FUNC0(EINVAL);
            goto fail;
        }
    } else {
        FUNC2(s, AV_LOG_TRACE, "av_interleaved_write_frame FLUSH\n");
        flush = 1;
    }

    for (;; ) {
        AVPacket opkt;
        int ret = FUNC7(s, &opkt, pkt, flush);
        if (pkt) {
            FUNC8(pkt, 0, sizeof(*pkt));
            FUNC1(pkt);
            pkt = NULL;
        }
        if (ret <= 0) //FIXME cleanup needed for ret<0 ?
            return ret;

        ret = FUNC10(s, &opkt);
        if (ret >= 0)
            s->streams[opkt.stream_index]->nb_frames++;

        FUNC3(&opkt);

        if (ret < 0)
            return ret;
        if(s->pb && s->pb->error)
            return s->pb->error;
    }
fail:
    FUNC3(pkt);
    return ret;
}