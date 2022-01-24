#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int /*<<< orphan*/  stream_index; scalar_t__* data; } ;
struct TYPE_14__ {int /*<<< orphan*/  index; } ;
struct TYPE_13__ {size_t size; size_t pos; size_t* data; } ;
struct TYPE_12__ {size_t interleave_index; int group_finished; scalar_t__ next_size; size_t interleave_size; int /*<<< orphan*/  next_data; int /*<<< orphan*/  next_timestamp; TYPE_2__* group; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ InterleavePacket ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 size_t FUNC0 (int*) ; 
 int FUNC1 (TYPE_4__*,int) ; 
 int* frame_sizes ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *ctx, PayloadContext *data,
                               AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                               const uint8_t *buf, int len)
{
    InterleavePacket* ip = &data->group[data->interleave_index];
    int frame_size, ret;

    if (data->group_finished && data->interleave_index == 0) {
        *timestamp = data->next_timestamp;
        ret = FUNC3(ctx, data, st, pkt, timestamp, data->next_data,
                           data->next_size);
        data->next_size = 0;
        return ret;
    }

    if (ip->size == 0) {
        /* No stored data for this interleave block, output an empty packet */
        if ((ret = FUNC1(pkt, 1)) < 0)
            return ret;
        pkt->data[0] = 0; // Blank - could also be 14, Erasure
    } else {
        if (ip->pos >= ip->size)
            return AVERROR_INVALIDDATA;
        if (ip->data[ip->pos] >= FUNC0(frame_sizes))
            return AVERROR_INVALIDDATA;
        frame_size = frame_sizes[ip->data[ip->pos]];
        if (ip->pos + frame_size > ip->size)
            return AVERROR_INVALIDDATA;

        if ((ret = FUNC1(pkt, frame_size)) < 0)
            return ret;
        FUNC2(pkt->data, &ip->data[ip->pos], frame_size);

        ip->pos += frame_size;
        data->group_finished = ip->pos >= ip->size;
    }
    pkt->stream_index = st->index;

    if (data->interleave_index == data->interleave_size) {
        data->interleave_index = 0;
        if (!data->group_finished)
            return 1;
        else
            return data->next_size > 0;
    } else {
        data->interleave_index++;
        return 1;
    }
}