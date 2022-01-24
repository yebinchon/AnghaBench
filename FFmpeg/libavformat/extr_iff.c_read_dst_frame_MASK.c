#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct TYPE_13__ {TYPE_2__** streams; int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int duration; scalar_t__ pos; int /*<<< orphan*/  stream_index; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {scalar_t__ body_end; scalar_t__ body_pos; scalar_t__ body_size; scalar_t__ is_64bit; } ;
struct TYPE_10__ {long long duration; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int sample_rate; } ;
typedef  TYPE_3__ IffDemuxContext ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
#define  ID_DSTF 129 
#define  ID_FRTE 128 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long long FUNC2 (int /*<<< orphan*/ *) ; 
 long long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVPacket *pkt)
{
    IffDemuxContext *iff = s->priv_data;
    AVIOContext *pb = s->pb;
    uint32_t chunk_id;
    uint64_t chunk_pos, data_pos, data_size;
    int ret = AVERROR_EOF;

    while (!FUNC1(pb)) {
        chunk_pos = FUNC7(pb);
        if (chunk_pos >= iff->body_end)
            return AVERROR_EOF;

        chunk_id = FUNC4(pb);
        data_size = iff->is_64bit ? FUNC3(pb) : FUNC2(pb);
        data_pos = FUNC7(pb);

        if (data_size < 1)
            return AVERROR_INVALIDDATA;

        switch (chunk_id) {
        case ID_DSTF:
            if (!pkt) {
                iff->body_pos  = FUNC7(pb) - (iff->is_64bit ? 12 : 8);
                iff->body_size = iff->body_end - iff->body_pos;
                return 0;
            }
            ret = FUNC0(pb, pkt, data_size);
            if (ret < 0)
                return ret;
            if (data_size & 1)
                FUNC6(pb, 1);
            pkt->flags |= AV_PKT_FLAG_KEY;
            pkt->stream_index = 0;
            pkt->duration = 588 * s->streams[0]->codecpar->sample_rate / 44100;
            pkt->pos = chunk_pos;

            chunk_pos = FUNC7(pb);
            if (chunk_pos >= iff->body_end)
                return 0;

            FUNC5(pb, chunk_pos, SEEK_SET);
            return 0;

        case ID_FRTE:
            if (data_size < 4)
                return AVERROR_INVALIDDATA;
            s->streams[0]->duration = FUNC2(pb) * 588LL * s->streams[0]->codecpar->sample_rate / 44100;
            break;
        }

        FUNC6(pb, data_size - (FUNC7(pb) - data_pos) + (data_size & 1));
    }

    return ret;
}