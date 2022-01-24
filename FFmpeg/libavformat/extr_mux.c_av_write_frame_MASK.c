#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_14__** streams; TYPE_2__* pb; TYPE_1__* oformat; } ;
struct TYPE_21__ {size_t stream_index; } ;
struct TYPE_20__ {int error; } ;
struct TYPE_19__ {int flags; int (* write_packet ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  nb_frames; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVFMT_ALLOW_FLUSH ; 
 int AVFMT_NOTIMESTAMPS ; 
 int FUNC0 (TYPE_4__*,TYPE_14__*,TYPE_3__*) ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 

int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    int ret;

    ret = FUNC3(s, pkt);
    if (ret < 0)
        return ret;

    if (!pkt) {
        if (s->oformat->flags & AVFMT_ALLOW_FLUSH) {
            ret = s->oformat->write_packet(s, NULL);
            FUNC2(s);
            if (ret >= 0 && s->pb && s->pb->error < 0)
                ret = s->pb->error;
            return ret;
        }
        return 1;
    }

    ret = FUNC1(s, pkt);
    if (ret <= 0)
        return ret;

#if FF_API_COMPUTE_PKT_FIELDS2 && FF_API_LAVF_AVCTX
    ret = compute_muxer_pkt_fields(s, s->streams[pkt->stream_index], pkt);

    if (ret < 0 && !(s->oformat->flags & AVFMT_NOTIMESTAMPS))
        return ret;
#endif

    ret = FUNC5(s, pkt);
    if (ret >= 0 && s->pb && s->pb->error < 0)
        ret = s->pb->error;

    if (ret >= 0)
        s->streams[pkt->stream_index]->nb_frames++;
    return ret;
}