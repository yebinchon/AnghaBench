#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_14__ {int data_offset; int data_size; int first_packet_offset; int packet_size; int nb_streams; TYPE_3__** asf_st; } ;
struct TYPE_13__ {int index; } ;
struct TYPE_12__ {int /*<<< orphan*/ * streams; int /*<<< orphan*/  pb; TYPE_4__* priv_data; } ;
struct TYPE_11__ {int flags; int dts; size_t stream_index; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFStream ;
typedef  TYPE_4__ ASFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int64_t FUNC8(AVFormatContext *s, int stream_index,
                                  int64_t *pos, int64_t pos_limit)
{
    ASFContext *asf = s->priv_data;
    int64_t pkt_pos = *pos, pkt_offset, dts = AV_NOPTS_VALUE, data_end;
    AVPacket pkt;
    int n;

    data_end = asf->data_offset + asf->data_size;

    n = (pkt_pos - asf->first_packet_offset + asf->packet_size - 1) /
        asf->packet_size;
    n = FUNC2(n, 0, ((data_end - asf->first_packet_offset) / asf->packet_size - 1));
    pkt_pos = asf->first_packet_offset +  n * asf->packet_size;

    FUNC5(s->pb, pkt_pos, SEEK_SET);
    pkt_offset = pkt_pos;

    FUNC7(s);
    while (FUNC6(s->pb) < data_end) {

        int i, ret, st_found;

        FUNC3(&pkt);
        pkt_offset = FUNC6(s->pb);
        if ((ret = FUNC0(s, &pkt)) < 0) {
            dts = AV_NOPTS_VALUE;
            return ret;
        }
        // ASFPacket may contain fragments of packets belonging to different streams,
        // pkt_offset is the offset of the first fragment within it.
        if ((pkt_offset >= (pkt_pos + asf->packet_size)))
            pkt_pos += asf->packet_size;
        for (i = 0; i < asf->nb_streams; i++) {
            ASFStream *st = asf->asf_st[i];

            st_found = 0;
            if (pkt.flags & AV_PKT_FLAG_KEY) {
                dts = pkt.dts;
                if (dts) {
                    FUNC1(s->streams[pkt.stream_index], pkt_pos,
                                       dts, pkt.size, 0, AVINDEX_KEYFRAME);
                    if (stream_index == st->index) {
                        st_found = 1;
                        break;
                    }
                }
            }
        }
        if (st_found)
            break;
        FUNC4(&pkt);
    }
    *pos = pkt_pos;

    FUNC4(&pkt);
    return dts;
}