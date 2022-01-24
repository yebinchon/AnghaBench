#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_16__ {long long bit_rate; int /*<<< orphan*/  pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int* data; int duration; int size; scalar_t__ stream_index; int /*<<< orphan*/  pos; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int counter; int packet_size; } ;
struct TYPE_12__ {long long sample_rate; } ;
typedef  TYPE_2__ DSSDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_4__*) ; 
 int* frame_size ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    DSSDemuxContext *ctx = s->priv_data;
    AVStream *st = s->streams[0];
    int size, byte, ret, offset;
    int64_t pos = FUNC4(s->pb);

    if (ctx->counter == 0)
        FUNC5(s, pkt);

    /* We make one byte-step here. Don't forget to add offset. */
    byte = FUNC2(s->pb);
    if (byte == 0xff)
        return AVERROR_INVALIDDATA;

    size = frame_size[byte & 3];

    ctx->packet_size = size;
    ctx->counter -= size;

    ret = FUNC0(pkt, size);
    if (ret < 0)
        return ret;
    pkt->pos = pos;

    pkt->data[0]  = byte;
    offset        = 1;
    pkt->duration = 240;
    s->bit_rate = 8LL * size * st->codecpar->sample_rate * 512 / (506 * pkt->duration);

    pkt->stream_index = 0;

    if (ctx->counter < 0) {
        int size2 = ctx->counter + size;

        ret = FUNC3(s->pb, pkt->data + offset,
                        size2 - offset);
        if (ret < size2 - offset) {
            FUNC1(pkt);
            return ret < 0 ? ret : AVERROR_EOF;
        }

        FUNC5(s, pkt);
        offset = size2;
    }

    ret = FUNC3(s->pb, pkt->data + offset, size - offset);
    if (ret < size - offset) {
        FUNC1(pkt);
        return ret < 0 ? ret : AVERROR_EOF;
    }

    return pkt->size;
}