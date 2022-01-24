#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_19__ {TYPE_4__* streams; } ;
struct TYPE_18__ {int packet_pos; } ;
struct TYPE_17__ {int nb_streams; int packet_size; TYPE_11__** streams; int /*<<< orphan*/  pb; TYPE_1__* internal; TYPE_5__* priv_data; } ;
struct TYPE_16__ {int dts; int flags; int stream_index; int pos; int /*<<< orphan*/  size; } ;
struct TYPE_15__ {int data_offset; } ;
struct TYPE_14__ {size_t id; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ ASFStream ;
typedef  TYPE_5__ ASFContext ;

/* Variables and functions */
 int ASF_MAX_STREAMS ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int64_t FUNC8(AVFormatContext *s, int stream_index,
                            int64_t *ppos, int64_t pos_limit)
{
    ASFContext *asf     = s->priv_data;
    AVPacket pkt1, *pkt = &pkt1;
    ASFStream *asf_st;
    int64_t pts;
    int64_t pos = *ppos;
    int i;
    int64_t start_pos[ASF_MAX_STREAMS];

    for (i = 0; i < s->nb_streams; i++)
        start_pos[i] = pos;

    if (s->packet_size > 0)
        pos = (pos + s->packet_size - 1 - s->internal->data_offset) /
              s->packet_size * s->packet_size +
              s->internal->data_offset;
    *ppos = pos;
    if (FUNC6(s->pb, pos, SEEK_SET) < 0)
        return AV_NOPTS_VALUE;

    FUNC7(s);
    FUNC0(s);
    for (;;) {
        if (FUNC5(s, pkt) < 0) {
            FUNC3(s, AV_LOG_INFO, "asf_read_pts failed\n");
            return AV_NOPTS_VALUE;
        }

        pts = pkt->dts;

        if (pkt->flags & AV_PKT_FLAG_KEY) {
            i = pkt->stream_index;

            asf_st = &asf->streams[s->streams[i]->id];

//            assert((asf_st->packet_pos - s->data_offset) % s->packet_size == 0);
            pos = asf_st->packet_pos;
            FUNC2(pkt->pos == asf_st->packet_pos);

            FUNC1(s->streams[i], pos, pts, pkt->size,
                               pos - start_pos[i] + 1, AVINDEX_KEYFRAME);
            start_pos[i] = asf_st->packet_pos + 1;

            if (pkt->stream_index == stream_index) {
                FUNC4(pkt);
                break;
            }
        }
        FUNC4(pkt);
    }

    *ppos = pos;
    return pts;
}