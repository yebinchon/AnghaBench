#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_17__ {int /*<<< orphan*/  pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_16__ {scalar_t__ discard; TYPE_1__* priv_data; } ;
struct TYPE_15__ {size_t audio_stream_num; scalar_t__ old_format; scalar_t__ audio_pkt_cnt; } ;
struct TYPE_14__ {int coded_framesize; int sub_packet_h; int /*<<< orphan*/  audio_framesize; } ;
typedef  TYPE_1__ RMStream ;
typedef  TYPE_2__ RMDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 scalar_t__ AVDISCARD_NONKEY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EIO ; 
 int RAW_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVPacket *pkt)
{
    RMDemuxContext *rm = s->priv_data;
    AVStream *st = NULL; // init to silence compiler warning
    int i, len, res, seq = 1;
    int64_t timestamp, pos;
    int flags;

    for (;;) {
        if (rm->audio_pkt_cnt) {
            // If there are queued audio packet return them first
            st = s->streams[rm->audio_stream_num];
            res = FUNC6(s, s->pb, st, st->priv_data, pkt);
            if(res < 0)
                return res;
            flags = 0;
        } else {
            if (rm->old_format) {
                RMStream *ast;

                st = s->streams[0];
                ast = st->priv_data;
                timestamp = AV_NOPTS_VALUE;
                len = !ast->audio_framesize ? RAW_PACKET_SIZE :
                    ast->coded_framesize * ast->sub_packet_h / 2;
                flags = (seq++ == 1) ? 2 : 0;
                pos = FUNC4(s->pb);
            } else {
                len = FUNC7(s, &timestamp, &flags, &i, &pos);
                if (len > 0)
                    st = s->streams[i];
            }

            if (FUNC3(s->pb))
                return AVERROR_EOF;
            if (len <= 0)
                return FUNC0(EIO);

            res = FUNC5 (s, s->pb, st, st->priv_data, len, pkt,
                                      &seq, flags, timestamp);
            if (res < -1)
                return res;
            if((flags&2) && (seq&0x7F) == 1)
                FUNC1(st, pos, timestamp, 0, 0, AVINDEX_KEYFRAME);
            if (res)
                continue;
        }

        if(  (st->discard >= AVDISCARD_NONKEY && !(flags&2))
           || st->discard >= AVDISCARD_ALL){
            FUNC2(pkt);
        } else
            break;
    }

    return 0;
}