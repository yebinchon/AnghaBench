
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_15__ {int stream_index; scalar_t__* data; } ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {size_t size; size_t pos; size_t* data; } ;
struct TYPE_12__ {size_t interleave_index; int group_finished; scalar_t__ next_size; size_t interleave_size; int next_data; int next_timestamp; TYPE_2__* group; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ InterleavePacket ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 size_t FF_ARRAY_ELEMS (int*) ;
 int av_new_packet (TYPE_4__*,int) ;
 int* frame_sizes ;
 int memcpy (scalar_t__*,size_t*,int) ;
 int store_packet (int *,TYPE_1__*,TYPE_3__*,TYPE_4__*,int *,int ,scalar_t__) ;

__attribute__((used)) static int return_stored_frame(AVFormatContext *ctx, PayloadContext *data,
                               AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                               const uint8_t *buf, int len)
{
    InterleavePacket* ip = &data->group[data->interleave_index];
    int frame_size, ret;

    if (data->group_finished && data->interleave_index == 0) {
        *timestamp = data->next_timestamp;
        ret = store_packet(ctx, data, st, pkt, timestamp, data->next_data,
                           data->next_size);
        data->next_size = 0;
        return ret;
    }

    if (ip->size == 0) {

        if ((ret = av_new_packet(pkt, 1)) < 0)
            return ret;
        pkt->data[0] = 0;
    } else {
        if (ip->pos >= ip->size)
            return AVERROR_INVALIDDATA;
        if (ip->data[ip->pos] >= FF_ARRAY_ELEMS(frame_sizes))
            return AVERROR_INVALIDDATA;
        frame_size = frame_sizes[ip->data[ip->pos]];
        if (ip->pos + frame_size > ip->size)
            return AVERROR_INVALIDDATA;

        if ((ret = av_new_packet(pkt, frame_size)) < 0)
            return ret;
        memcpy(pkt->data, &ip->data[ip->pos], frame_size);

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
